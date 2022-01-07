
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_mc_obj_desc {int dummy; } ;
struct fsl_mc_device {int dev; } ;
struct fsl_mc_child_objs {int child_count; struct fsl_mc_obj_desc* child_array; } ;


 int __fsl_mc_device_remove ;
 int __fsl_mc_device_remove_if_not_in_mc ;
 int device_for_each_child (int *,struct fsl_mc_child_objs*,int ) ;

__attribute__((used)) static void dprc_remove_devices(struct fsl_mc_device *mc_bus_dev,
    struct fsl_mc_obj_desc *obj_desc_array,
    int num_child_objects_in_mc)
{
 if (num_child_objects_in_mc != 0) {




  struct fsl_mc_child_objs objs;

  objs.child_count = num_child_objects_in_mc;
  objs.child_array = obj_desc_array;
  device_for_each_child(&mc_bus_dev->dev, &objs,
          __fsl_mc_device_remove_if_not_in_mc);
 } else {




  device_for_each_child(&mc_bus_dev->dev, ((void*)0),
          __fsl_mc_device_remove);
 }
}
