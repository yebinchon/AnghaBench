
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct soc_device {struct device dev; } ;



struct device *soc_device_to_device(struct soc_device *soc_dev)
{
 return &soc_dev->dev;
}
