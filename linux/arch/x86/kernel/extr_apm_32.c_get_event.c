
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apm_eventinfo_t ;
typedef int apm_event_t ;


 int APM_NO_EVENTS ;
 int APM_SUCCESS ;
 int apm_error (char*,int) ;
 int apm_get_event (int*,int *) ;

__attribute__((used)) static apm_event_t get_event(void)
{
 int error;
 apm_event_t event = APM_NO_EVENTS;
 apm_eventinfo_t info;

 static int notified;


 error = apm_get_event(&event, &info);
 if (error == APM_SUCCESS)
  return event;

 if ((error != APM_NO_EVENTS) && (notified++ == 0))
  apm_error("get_event", error);

 return 0;
}
