
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_mc_device {int dev; int * mc_io; int mc_handle; } ;
struct fsl_mc_bus {int irq_resources; } ;


 int EINVAL ;
 int __fsl_mc_device_remove ;
 int dev_err (int *,char*,int) ;
 scalar_t__ dev_get_msi_domain (int *) ;
 int dev_info (int *,char*) ;
 int dev_set_msi_domain (int *,int *) ;
 int device_for_each_child (int *,int *,int ) ;
 int dprc_close (int *,int ,int ) ;
 int dprc_teardown_irq (struct fsl_mc_device*) ;
 int fsl_destroy_mc_io (int *) ;
 int fsl_mc_cleanup_all_resource_pools (struct fsl_mc_device*) ;
 int fsl_mc_cleanup_irq_pool (struct fsl_mc_bus*) ;
 int fsl_mc_is_root_dprc (int *) ;
 int is_fsl_mc_bus_dprc (struct fsl_mc_device*) ;
 struct fsl_mc_bus* to_fsl_mc_bus (struct fsl_mc_device*) ;

__attribute__((used)) static int dprc_remove(struct fsl_mc_device *mc_dev)
{
 int error;
 struct fsl_mc_bus *mc_bus = to_fsl_mc_bus(mc_dev);

 if (!is_fsl_mc_bus_dprc(mc_dev))
  return -EINVAL;
 if (!mc_dev->mc_io)
  return -EINVAL;

 if (!mc_bus->irq_resources)
  return -EINVAL;

 if (dev_get_msi_domain(&mc_dev->dev))
  dprc_teardown_irq(mc_dev);

 device_for_each_child(&mc_dev->dev, ((void*)0), __fsl_mc_device_remove);

 if (dev_get_msi_domain(&mc_dev->dev)) {
  fsl_mc_cleanup_irq_pool(mc_bus);
  dev_set_msi_domain(&mc_dev->dev, ((void*)0));
 }

 fsl_mc_cleanup_all_resource_pools(mc_dev);

 error = dprc_close(mc_dev->mc_io, 0, mc_dev->mc_handle);
 if (error < 0)
  dev_err(&mc_dev->dev, "dprc_close() failed: %d\n", error);

 if (!fsl_mc_is_root_dprc(&mc_dev->dev)) {
  fsl_destroy_mc_io(mc_dev->mc_io);
  mc_dev->mc_io = ((void*)0);
 }

 dev_info(&mc_dev->dev, "DPRC device unbound from driver");
 return 0;
}
