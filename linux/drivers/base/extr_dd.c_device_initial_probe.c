
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int __device_attach (struct device*,int) ;

void device_initial_probe(struct device *dev)
{
 __device_attach(dev, 1);
}
