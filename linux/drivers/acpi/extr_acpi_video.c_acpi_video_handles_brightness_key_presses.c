
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REPORT_BRIGHTNESS_KEY_EVENTS ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int report_key_events ;
 int video_bus_head ;
 int video_list_lock ;

bool acpi_video_handles_brightness_key_presses(void)
{
 bool have_video_busses;

 mutex_lock(&video_list_lock);
 have_video_busses = !list_empty(&video_bus_head);
 mutex_unlock(&video_list_lock);

 return have_video_busses &&
        (report_key_events & REPORT_BRIGHTNESS_KEY_EVENTS);
}
