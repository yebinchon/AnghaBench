
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int fsl_mc_device_remove (int ) ;
 int to_fsl_mc_device (struct device*) ;

__attribute__((used)) static int __fsl_mc_device_remove(struct device *dev, void *data)
{
 fsl_mc_device_remove(to_fsl_mc_device(dev));
 return 0;
}
