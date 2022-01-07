
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATOMIC_RELAXED ;
 scalar_t__ atomic_load_u32 (int *,int ) ;
 int tsd_global_slow_count ;

bool
tsd_global_slow() {
 return atomic_load_u32(&tsd_global_slow_count, ATOMIC_RELAXED) > 0;
}
