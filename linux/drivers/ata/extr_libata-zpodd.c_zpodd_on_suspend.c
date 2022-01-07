
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpodd {int zp_sampled; int zp_ready; unsigned long last_ready; } ;
struct ata_device {struct zpodd* zpodd; } ;


 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int zpodd_poweroff_delay ;
 int zpready (struct ata_device*) ;

void zpodd_on_suspend(struct ata_device *dev)
{
 struct zpodd *zpodd = dev->zpodd;
 unsigned long expires;

 if (!zpready(dev)) {
  zpodd->zp_sampled = 0;
  zpodd->zp_ready = 0;
  return;
 }

 if (!zpodd->zp_sampled) {
  zpodd->zp_sampled = 1;
  zpodd->last_ready = jiffies;
  return;
 }

 expires = zpodd->last_ready +
    msecs_to_jiffies(zpodd_poweroff_delay * 1000);
 if (time_before(jiffies, expires))
  return;

 zpodd->zp_ready = 1;
}
