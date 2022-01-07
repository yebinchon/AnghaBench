
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pdc_lock ;
 scalar_t__ spin_is_locked (int *) ;
 int spin_unlock (int *) ;

void pdc_emergency_unlock(void)
{

        if (spin_is_locked(&pdc_lock))
  spin_unlock(&pdc_lock);
}
