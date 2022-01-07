
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct backlight_properties {int brightness; int max_brightness; } ;
struct TYPE_3__ {struct backlight_properties props; } ;


 scalar_t__ atomic_read (int *) ;
 int backlight_update_status (TYPE_1__*) ;
 int kernel_backlight_disabled ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* pmac_backlight ;
 scalar_t__ pmac_backlight_key_queued ;
 int pmac_backlight_mutex ;

__attribute__((used)) static void pmac_backlight_key_worker(struct work_struct *work)
{
 if (atomic_read(&kernel_backlight_disabled))
  return;

 mutex_lock(&pmac_backlight_mutex);
 if (pmac_backlight) {
  struct backlight_properties *props;
  int brightness;

  props = &pmac_backlight->props;

  brightness = props->brightness +
   ((pmac_backlight_key_queued?-1:1) *
    (props->max_brightness / 15));

  if (brightness < 0)
   brightness = 0;
  else if (brightness > props->max_brightness)
   brightness = props->max_brightness;

  props->brightness = brightness;
  backlight_update_status(pmac_backlight);
 }
 mutex_unlock(&pmac_backlight_mutex);
}
