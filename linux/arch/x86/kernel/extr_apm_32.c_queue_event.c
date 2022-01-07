
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apm_user {scalar_t__ event_head; scalar_t__ event_tail; int* events; int standbys_pending; int suspends_pending; int writer; int suser; int reader; struct apm_user* next; } ;
typedef int apm_event_t ;


 scalar_t__ APM_MAX_EVENTS ;




 int apm_waitqueue ;
 int pr_err (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int standbys_pending ;
 int suspends_pending ;
 struct apm_user* user_list ;
 int user_list_lock ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void queue_event(apm_event_t event, struct apm_user *sender)
{
 struct apm_user *as;

 spin_lock(&user_list_lock);
 if (user_list == ((void*)0))
  goto out;
 for (as = user_list; as != ((void*)0); as = as->next) {
  if ((as == sender) || (!as->reader))
   continue;
  if (++as->event_head >= APM_MAX_EVENTS)
   as->event_head = 0;

  if (as->event_head == as->event_tail) {
   static int notified;

   if (notified++ == 0)
    pr_err("an event queue overflowed\n");
   if (++as->event_tail >= APM_MAX_EVENTS)
    as->event_tail = 0;
  }
  as->events[as->event_head] = event;
  if (!as->suser || !as->writer)
   continue;
  switch (event) {
  case 130:
  case 128:
   as->suspends_pending++;
   suspends_pending++;
   break;

  case 131:
  case 129:
   as->standbys_pending++;
   standbys_pending++;
   break;
  }
 }
 wake_up_interruptible(&apm_waitqueue);
out:
 spin_unlock(&user_list_lock);
}
