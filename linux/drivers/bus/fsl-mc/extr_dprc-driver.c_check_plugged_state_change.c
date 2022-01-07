
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fsl_mc_obj_desc {int state; } ;
struct TYPE_2__ {int state; } ;
struct fsl_mc_device {int dev; TYPE_1__ obj_desc; } ;


 int FSL_MC_OBJ_STATE_PLUGGED ;
 int dev_err (int *,char*,int) ;
 int device_attach (int *) ;
 int device_release_driver (int *) ;

__attribute__((used)) static void check_plugged_state_change(struct fsl_mc_device *mc_dev,
           struct fsl_mc_obj_desc *obj_desc)
{
 int error;
 u32 plugged_flag_at_mc =
   obj_desc->state & FSL_MC_OBJ_STATE_PLUGGED;

 if (plugged_flag_at_mc !=
     (mc_dev->obj_desc.state & FSL_MC_OBJ_STATE_PLUGGED)) {
  if (plugged_flag_at_mc) {
   mc_dev->obj_desc.state |= FSL_MC_OBJ_STATE_PLUGGED;
   error = device_attach(&mc_dev->dev);
   if (error < 0) {
    dev_err(&mc_dev->dev,
     "device_attach() failed: %d\n",
     error);
   }
  } else {
   mc_dev->obj_desc.state &= ~FSL_MC_OBJ_STATE_PLUGGED;
   device_release_driver(&mc_dev->dev);
  }
 }
}
