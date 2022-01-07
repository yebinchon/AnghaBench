
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint64_t ;
typedef int tsdn_t ;
struct TYPE_2__ {size_t accumbytes; int mtx; } ;


 int ATOMIC_RELAXED ;
 size_t SC_LARGE_MINCLASS ;
 int atomic_compare_exchange_weak_u64 (size_t*,size_t*,size_t,int ,int ) ;
 size_t atomic_load_u64 (size_t*,int ) ;
 int cassert (int ) ;
 int config_prof ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 TYPE_1__ prof_idump_accumulated ;

void
prof_idump_rollback_impl(tsdn_t *tsdn, size_t usize) {
 cassert(config_prof);






 uint64_t a0, a1;
 malloc_mutex_lock(tsdn, &prof_idump_accumulated.mtx);
 a0 = prof_idump_accumulated.accumbytes;
 a1 = (a0 >= SC_LARGE_MINCLASS - usize)
     ? a0 - (SC_LARGE_MINCLASS - usize) : 0;
 prof_idump_accumulated.accumbytes = a1;
 malloc_mutex_unlock(tsdn, &prof_idump_accumulated.mtx);

}
