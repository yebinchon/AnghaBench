
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evthread_lock_callbacks {int dummy; } ;


 scalar_t__ evthread_lock_debugging_enabled_ ;
 struct evthread_lock_callbacks evthread_lock_fns_ ;
 struct evthread_lock_callbacks original_lock_fns_ ;

struct evthread_lock_callbacks *evthread_get_lock_callbacks()
{
 return evthread_lock_debugging_enabled_
     ? &original_lock_fns_ : &evthread_lock_fns_;
}
