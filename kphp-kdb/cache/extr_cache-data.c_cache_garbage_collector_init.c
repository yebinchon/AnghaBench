
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cur_idx; } ;


 TYPE_1__ garbage_collector ;
 int lrand48 () ;
 int uri_hash_prime ;

void cache_garbage_collector_init (void) {
  garbage_collector.cur_idx = lrand48 () % uri_hash_prime;
}
