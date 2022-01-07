
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {scalar_t__ driver_data; } ;


 int report_key_events ;

__attribute__((used)) static int video_set_report_key_events(const struct dmi_system_id *id)
{
 if (report_key_events == -1)
  report_key_events = (uintptr_t)id->driver_data;
 return 0;
}
