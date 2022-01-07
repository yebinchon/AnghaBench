
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apm_user {scalar_t__ event_tail; int * events; } ;
typedef int apm_event_t ;


 scalar_t__ APM_MAX_EVENTS ;

__attribute__((used)) static apm_event_t get_queued_event(struct apm_user *as)
{
 if (++as->event_tail >= APM_MAX_EVENTS)
  as->event_tail = 0;
 return as->events[as->event_tail];
}
