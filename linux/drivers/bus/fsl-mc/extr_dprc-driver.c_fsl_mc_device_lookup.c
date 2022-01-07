
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_mc_obj_desc {int dummy; } ;
struct fsl_mc_device {int dev; } ;
struct device {int dummy; } ;


 int __fsl_mc_device_match ;
 struct device* device_find_child (int *,struct fsl_mc_obj_desc*,int ) ;
 struct fsl_mc_device* to_fsl_mc_device (struct device*) ;

__attribute__((used)) static struct fsl_mc_device *fsl_mc_device_lookup(struct fsl_mc_obj_desc
        *obj_desc,
        struct fsl_mc_device
        *mc_bus_dev)
{
 struct device *dev;

 dev = device_find_child(&mc_bus_dev->dev, obj_desc,
    __fsl_mc_device_match);

 return dev ? to_fsl_mc_device(dev) : ((void*)0);
}
