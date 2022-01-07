
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct resource {int start; } ;
struct TYPE_7__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mc_version {int revision; int minor; int major; } ;
struct fsl_mc_obj_desc {int id; int irq_count; scalar_t__ region_count; int type; int vendor; int ver_minor; int ver_major; } ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_device {int dummy; } ;
struct fsl_mc {struct fsl_mc_device* root_mc_bus_dev; int num_translation_ranges; int translation_ranges; } ;
typedef int phys_addr_t ;


 int ENOMEM ;
 int FSL_MC_IO_ATOMIC_CONTEXT_PORTAL ;
 int FSL_MC_VENDOR_FREESCALE ;
 int GFP_KERNEL ;
 int dev_err (TYPE_1__*,char*,int) ;
 int dev_info (TYPE_1__*,char*,int ,int ,int ) ;
 struct fsl_mc* devm_kzalloc (TYPE_1__*,int,int ) ;
 int dprc_get_api_version (struct fsl_mc_io*,int ,int *,int *) ;
 int dprc_get_container_id (struct fsl_mc_io*,int ,int*) ;
 int fsl_create_mc_io (TYPE_1__*,int ,int ,int *,int ,struct fsl_mc_io**) ;
 int fsl_destroy_mc_io (struct fsl_mc_io*) ;
 int fsl_mc_device_add (struct fsl_mc_obj_desc*,struct fsl_mc_io*,TYPE_1__*,struct fsl_mc_device**) ;
 int get_mc_addr_translation_ranges (TYPE_1__*,int *,int *) ;
 int mc_get_version (struct fsl_mc_io*,int ,struct mc_version*) ;
 int memset (struct fsl_mc_obj_desc*,int ,int) ;
 int of_address_to_resource (int,int ,struct resource*) ;
 int platform_set_drvdata (struct platform_device*,struct fsl_mc*) ;
 int resource_size (struct resource*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int fsl_mc_bus_probe(struct platform_device *pdev)
{
 struct fsl_mc_obj_desc obj_desc;
 int error;
 struct fsl_mc *mc;
 struct fsl_mc_device *mc_bus_dev = ((void*)0);
 struct fsl_mc_io *mc_io = ((void*)0);
 int container_id;
 phys_addr_t mc_portal_phys_addr;
 u32 mc_portal_size;
 struct mc_version mc_version;
 struct resource res;

 mc = devm_kzalloc(&pdev->dev, sizeof(*mc), GFP_KERNEL);
 if (!mc)
  return -ENOMEM;

 platform_set_drvdata(pdev, mc);




 error = of_address_to_resource(pdev->dev.of_node, 0, &res);
 if (error < 0) {
  dev_err(&pdev->dev,
   "of_address_to_resource() failed for %pOF\n",
   pdev->dev.of_node);
  return error;
 }

 mc_portal_phys_addr = res.start;
 mc_portal_size = resource_size(&res);
 error = fsl_create_mc_io(&pdev->dev, mc_portal_phys_addr,
     mc_portal_size, ((void*)0),
     FSL_MC_IO_ATOMIC_CONTEXT_PORTAL, &mc_io);
 if (error < 0)
  return error;

 error = mc_get_version(mc_io, 0, &mc_version);
 if (error != 0) {
  dev_err(&pdev->dev,
   "mc_get_version() failed with error %d\n", error);
  goto error_cleanup_mc_io;
 }

 dev_info(&pdev->dev, "MC firmware version: %u.%u.%u\n",
   mc_version.major, mc_version.minor, mc_version.revision);

 error = get_mc_addr_translation_ranges(&pdev->dev,
            &mc->translation_ranges,
            &mc->num_translation_ranges);
 if (error < 0)
  goto error_cleanup_mc_io;

 error = dprc_get_container_id(mc_io, 0, &container_id);
 if (error < 0) {
  dev_err(&pdev->dev,
   "dprc_get_container_id() failed: %d\n", error);
  goto error_cleanup_mc_io;
 }

 memset(&obj_desc, 0, sizeof(struct fsl_mc_obj_desc));
 error = dprc_get_api_version(mc_io, 0,
         &obj_desc.ver_major,
         &obj_desc.ver_minor);
 if (error < 0)
  goto error_cleanup_mc_io;

 obj_desc.vendor = FSL_MC_VENDOR_FREESCALE;
 strcpy(obj_desc.type, "dprc");
 obj_desc.id = container_id;
 obj_desc.irq_count = 1;
 obj_desc.region_count = 0;

 error = fsl_mc_device_add(&obj_desc, mc_io, &pdev->dev, &mc_bus_dev);
 if (error < 0)
  goto error_cleanup_mc_io;

 mc->root_mc_bus_dev = mc_bus_dev;
 return 0;

error_cleanup_mc_io:
 fsl_destroy_mc_io(mc_io);
 return error;
}
