
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_mc_device {int dev; } ;


 int device_del (int *) ;
 int put_device (int *) ;

void fsl_mc_device_remove(struct fsl_mc_device *mc_dev)
{



 device_del(&mc_dev->dev);
 put_device(&mc_dev->dev);
}
