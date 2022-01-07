
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_read (int *) ;
 int kernel_backlight_disabled ;
 int pmac_backlight_key_queued ;
 int pmac_backlight_key_work ;
 int schedule_work (int *) ;

void pmac_backlight_key(int direction)
{
 if (atomic_read(&kernel_backlight_disabled))
  return;




 pmac_backlight_key_queued = direction;
 schedule_work(&pmac_backlight_key_work);
}
