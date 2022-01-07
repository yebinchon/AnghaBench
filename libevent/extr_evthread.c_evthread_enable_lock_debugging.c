
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evthread_lock_callbacks {int wait_condition; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct evthread_condition_callbacks {int dummy; } ;


 int EVTHREAD_LOCKTYPE_RECURSIVE ;
 int EVTHREAD_LOCK_API_VERSION ;
 int debug_cond_wait ;
 int debug_lock_alloc ;
 int debug_lock_free ;
 int debug_lock_lock ;
 int debug_lock_unlock ;
 int event_global_setup_locks_ (int ) ;
 struct evthread_lock_callbacks evthread_cond_fns_ ;
 int evthread_lock_debugging_enabled_ ;
 struct evthread_lock_callbacks evthread_lock_fns_ ;
 int memcpy (struct evthread_lock_callbacks*,struct evthread_lock_callbacks*,int) ;
 struct evthread_lock_callbacks original_cond_fns_ ;
 struct evthread_lock_callbacks original_lock_fns_ ;

void
evthread_enable_lock_debugging(void)
{
 struct evthread_lock_callbacks cbs = {
  EVTHREAD_LOCK_API_VERSION,
  EVTHREAD_LOCKTYPE_RECURSIVE,
  debug_lock_alloc,
  debug_lock_free,
  debug_lock_lock,
  debug_lock_unlock
 };
 if (evthread_lock_debugging_enabled_)
  return;
 memcpy(&original_lock_fns_, &evthread_lock_fns_,
     sizeof(struct evthread_lock_callbacks));
 memcpy(&evthread_lock_fns_, &cbs,
     sizeof(struct evthread_lock_callbacks));

 memcpy(&original_cond_fns_, &evthread_cond_fns_,
     sizeof(struct evthread_condition_callbacks));
 evthread_cond_fns_.wait_condition = debug_cond_wait;
 evthread_lock_debugging_enabled_ = 1;


 event_global_setup_locks_(0);
}
