
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVTHREAD_SETUP_GLOBAL_LOCK (int ,int ) ;
 int event_debug_map_lock_ ;
 scalar_t__ evsig_global_setup_locks_ (int const) ;
 scalar_t__ evutil_global_setup_locks_ (int const) ;
 scalar_t__ evutil_secure_rng_global_setup_locks_ (int const) ;

int
event_global_setup_locks_(const int enable_locks)
{

 EVTHREAD_SETUP_GLOBAL_LOCK(event_debug_map_lock_, 0);

 if (evsig_global_setup_locks_(enable_locks) < 0)
  return -1;
 if (evutil_global_setup_locks_(enable_locks) < 0)
  return -1;
 if (evutil_secure_rng_global_setup_locks_(enable_locks) < 0)
  return -1;
 return 0;
}
