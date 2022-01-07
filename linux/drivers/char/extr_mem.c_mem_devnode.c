
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ umode_t ;
struct device {int devt; } ;
struct TYPE_2__ {scalar_t__ mode; } ;


 size_t MINOR (int ) ;
 TYPE_1__* devlist ;

__attribute__((used)) static char *mem_devnode(struct device *dev, umode_t *mode)
{
 if (mode && devlist[MINOR(dev->devt)].mode)
  *mode = devlist[MINOR(dev->devt)].mode;
 return ((void*)0);
}
