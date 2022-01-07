
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;


 int ENODEV ;
 int __rb4xx_cpld_change_cfg (TYPE_1__*,unsigned int,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* rb4xx_cpld ;

int rb4xx_cpld_change_cfg(unsigned mask, unsigned value)
{
 int ret;

 if (rb4xx_cpld == ((void*)0))
  return -ENODEV;

 mutex_lock(&rb4xx_cpld->lock);
 ret = __rb4xx_cpld_change_cfg(rb4xx_cpld, mask, value);
 mutex_unlock(&rb4xx_cpld->lock);

 return ret;
}
