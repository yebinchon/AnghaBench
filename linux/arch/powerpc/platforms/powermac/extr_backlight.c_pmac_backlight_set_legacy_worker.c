
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int __pmac_backlight_set_legacy_brightness (int ) ;
 scalar_t__ atomic_read (int *) ;
 int kernel_backlight_disabled ;
 int pmac_backlight_set_legacy_queued ;

__attribute__((used)) static void pmac_backlight_set_legacy_worker(struct work_struct *work)
{
 if (atomic_read(&kernel_backlight_disabled))
  return;

 __pmac_backlight_set_legacy_brightness(pmac_backlight_set_legacy_queued);
}
