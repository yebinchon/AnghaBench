
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc_device {int list; } ;


 int BUG_ON (int) ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;
 int mc_devices_lock ;
 int mconsole_devices ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void mconsole_register_dev(struct mc_device *new)
{
 spin_lock(&mc_devices_lock);
 BUG_ON(!list_empty(&new->list));
 list_add(&new->list, &mconsole_devices);
 spin_unlock(&mc_devices_lock);
}
