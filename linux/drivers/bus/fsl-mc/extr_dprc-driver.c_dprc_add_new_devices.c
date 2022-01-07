
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_mc_obj_desc {int type; } ;
struct fsl_mc_device {int dev; } ;


 int check_plugged_state_change (struct fsl_mc_device*,struct fsl_mc_obj_desc*) ;
 int fsl_mc_device_add (struct fsl_mc_obj_desc*,int *,int *,struct fsl_mc_device**) ;
 struct fsl_mc_device* fsl_mc_device_lookup (struct fsl_mc_obj_desc*,struct fsl_mc_device*) ;
 int put_device (int *) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static void dprc_add_new_devices(struct fsl_mc_device *mc_bus_dev,
     struct fsl_mc_obj_desc *obj_desc_array,
     int num_child_objects_in_mc)
{
 int error;
 int i;

 for (i = 0; i < num_child_objects_in_mc; i++) {
  struct fsl_mc_device *child_dev;
  struct fsl_mc_obj_desc *obj_desc = &obj_desc_array[i];

  if (strlen(obj_desc->type) == 0)
   continue;




  child_dev = fsl_mc_device_lookup(obj_desc, mc_bus_dev);
  if (child_dev) {
   check_plugged_state_change(child_dev, obj_desc);
   put_device(&child_dev->dev);
   continue;
  }

  error = fsl_mc_device_add(obj_desc, ((void*)0), &mc_bus_dev->dev,
       &child_dev);
  if (error < 0)
   continue;
 }
}
