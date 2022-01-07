
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct backlight_device {TYPE_1__ props; } ;


 scalar_t__ BACKLIGHT_RAW ;
 unsigned long BACKLIGHT_REGISTERED ;
 int NOTIFY_OK ;
 int backlight_notify_work ;
 int schedule_work (int *) ;

__attribute__((used)) static int acpi_video_backlight_notify(struct notifier_block *nb,
           unsigned long val, void *bd)
{
 struct backlight_device *backlight = bd;


 if (backlight->props.type == BACKLIGHT_RAW &&
     val == BACKLIGHT_REGISTERED)
  schedule_work(&backlight_notify_work);

 return NOTIFY_OK;
}
