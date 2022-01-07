
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum acpi_backlight_type { ____Placeholder_acpi_backlight_type } acpi_backlight_type ;
struct TYPE_3__ {scalar_t__ priority; int notifier_call; } ;
typedef int DEFINE_MUTEX ;


 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_DEVICE ;
 int ACPI_UINT32_MAX ;
 long ACPI_VIDEO_BACKLIGHT ;
 int BACKLIGHT_RAW ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ acpi_backlight_cmdline ;
 scalar_t__ acpi_backlight_dmi ;
 int acpi_backlight_native ;
 scalar_t__ acpi_backlight_undef ;
 int acpi_backlight_vendor ;
 int acpi_backlight_video ;
 scalar_t__ acpi_osi_is_win8 () ;
 int acpi_video_backlight_notify ;
 int acpi_video_backlight_notify_work ;
 int acpi_video_parse_cmdline () ;
 int acpi_walk_namespace (int ,int ,int ,int ,int *,long*,int *) ;
 scalar_t__ backlight_device_get_by_type (int ) ;
 TYPE_1__ backlight_nb ;
 int backlight_notifier_registered ;
 int backlight_notify_work ;
 scalar_t__ backlight_register_notifier (TYPE_1__*) ;
 int dmi_check_system (int ) ;
 int find_video ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int video_detect_dmi_table ;

enum acpi_backlight_type acpi_video_get_backlight_type(void)
{
 static DEFINE_MUTEX(init_mutex);
 static bool init_done;
 static long video_caps;


 mutex_lock(&init_mutex);
 if (!init_done) {
  acpi_video_parse_cmdline();
  dmi_check_system(video_detect_dmi_table);
  acpi_walk_namespace(ACPI_TYPE_DEVICE, ACPI_ROOT_OBJECT,
        ACPI_UINT32_MAX, find_video, ((void*)0),
        &video_caps, ((void*)0));
  INIT_WORK(&backlight_notify_work,
     acpi_video_backlight_notify_work);
  backlight_nb.notifier_call = acpi_video_backlight_notify;
  backlight_nb.priority = 0;
  if (backlight_register_notifier(&backlight_nb) == 0)
   backlight_notifier_registered = 1;
  init_done = 1;
 }
 mutex_unlock(&init_mutex);

 if (acpi_backlight_cmdline != acpi_backlight_undef)
  return acpi_backlight_cmdline;

 if (acpi_backlight_dmi != acpi_backlight_undef)
  return acpi_backlight_dmi;

 if (!(video_caps & ACPI_VIDEO_BACKLIGHT))
  return acpi_backlight_vendor;

 if (acpi_osi_is_win8() && backlight_device_get_by_type(BACKLIGHT_RAW))
  return acpi_backlight_native;

 return acpi_backlight_video;
}
