
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_mc_driver {struct fsl_mc_device_id* match_id_table; } ;
struct fsl_mc_device_id {int vendor; int obj_type; } ;
struct TYPE_2__ {int state; int vendor; int type; } ;
struct fsl_mc_device {TYPE_1__ obj_desc; int dev; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 int FSL_MC_OBJ_STATE_PLUGGED ;
 int dev_dbg (struct device*,char*,char*) ;
 int fsl_mc_is_root_dprc (int *) ;
 scalar_t__ strcmp (int ,int ) ;
 struct fsl_mc_device* to_fsl_mc_device (struct device*) ;
 struct fsl_mc_driver* to_fsl_mc_driver (struct device_driver*) ;

__attribute__((used)) static int fsl_mc_bus_match(struct device *dev, struct device_driver *drv)
{
 const struct fsl_mc_device_id *id;
 struct fsl_mc_device *mc_dev = to_fsl_mc_device(dev);
 struct fsl_mc_driver *mc_drv = to_fsl_mc_driver(drv);
 bool found = 0;

 if (!mc_drv->match_id_table)
  goto out;





 if ((mc_dev->obj_desc.state & FSL_MC_OBJ_STATE_PLUGGED) == 0 &&
     !fsl_mc_is_root_dprc(&mc_dev->dev))
  goto out;





 for (id = mc_drv->match_id_table; id->vendor != 0x0; id++) {
  if (id->vendor == mc_dev->obj_desc.vendor &&
      strcmp(id->obj_type, mc_dev->obj_desc.type) == 0) {
   found = 1;

   break;
  }
 }

out:
 dev_dbg(dev, "%smatched\n", found ? "" : "not ");
 return found;
}
