
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int __device_attach (struct device*,int) ;

int device_attach(struct device *dev)
{
 return __device_attach(dev, 0);
}
