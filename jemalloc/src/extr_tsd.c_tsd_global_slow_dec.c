
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;


 int ATOMIC_RELAXED ;
 int atomic_fetch_sub_u32 (int *,int,int ) ;
 int tsd_force_recompute (int *) ;
 int tsd_global_slow_count ;

void tsd_global_slow_dec(tsdn_t *tsdn) {
 atomic_fetch_sub_u32(&tsd_global_slow_count, 1, ATOMIC_RELAXED);

 tsd_force_recompute(tsdn);
}
