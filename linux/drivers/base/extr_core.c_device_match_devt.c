
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ devt; } ;
typedef scalar_t__ dev_t ;



int device_match_devt(struct device *dev, const void *pdevt)
{
 return dev->devt == *(dev_t *)pdevt;
}
