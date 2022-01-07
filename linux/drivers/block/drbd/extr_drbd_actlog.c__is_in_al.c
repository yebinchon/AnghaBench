
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {int al_lock; int act_log; } ;


 int lc_is_used (int ,unsigned int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int _is_in_al(struct drbd_device *device, unsigned int enr)
{
 int rv;

 spin_lock_irq(&device->al_lock);
 rv = lc_is_used(device->act_log, enr);
 spin_unlock_irq(&device->al_lock);

 return rv;
}
