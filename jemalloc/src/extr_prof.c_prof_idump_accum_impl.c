
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int tsdn_t ;
struct TYPE_2__ {int mtx; int accumbytes; } ;


 int ATOMIC_RELAXED ;
 int assert (int) ;
 int atomic_compare_exchange_weak_u64 (int *,int *,int ,int ,int ) ;
 int atomic_load_u64 (int *,int ) ;
 int cassert (int ) ;
 int config_prof ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 TYPE_1__ prof_idump_accumulated ;
 int prof_interval ;

bool
prof_idump_accum_impl(tsdn_t *tsdn, uint64_t accumbytes) {
 cassert(config_prof);

 bool overflow;
 uint64_t a0, a1;
 malloc_mutex_lock(tsdn, &prof_idump_accumulated.mtx);
 a0 = prof_idump_accumulated.accumbytes;
 a1 = a0 + accumbytes;
 overflow = (a1 >= prof_interval);
 if (overflow) {
  a1 %= prof_interval;
 }
 prof_idump_accumulated.accumbytes = a1;
 malloc_mutex_unlock(tsdn, &prof_idump_accumulated.mtx);

 return overflow;
}
