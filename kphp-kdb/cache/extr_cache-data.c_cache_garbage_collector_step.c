
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache_uri {int const last_access; int * data; struct cache_uri* hnext; scalar_t__ local_copy; } ;
struct TYPE_2__ {int cur_idx; } ;


 struct cache_uri** H ;
 int cache_uri_do_delete (struct cache_uri*) ;
 TYPE_1__ garbage_collector ;
 int log_last_ts ;
 scalar_t__ uncommited_delete_logevents_bytes ;
 int uri_cache_remove (int *) ;
 int uri_hash_prime ;
 int uri_living_time ;
 size_t uri_off ;
 int vkprintf (int,char*,int,int const) ;

int cache_garbage_collector_step (int max_steps) {
  const int dead_time = log_last_ts - uri_living_time;
  vkprintf (3, "log_last_ts: %d, dead_time: %d\n", log_last_ts, dead_time);
  uncommited_delete_logevents_bytes = 0;
  int i = garbage_collector.cur_idx, steps = 0, r = 0;
  while (steps < max_steps && r < max_steps) {
    steps++;
    struct cache_uri **V = &(H[i]), *U;
    while ((U = *V) != ((void*)0)) {
      steps++;
      if (U->local_copy || U->last_access >= dead_time) {
        V = &(U->hnext);
      } else {
        *V = U->hnext;
        uri_cache_remove (&(U->data[uri_off]));
        cache_uri_do_delete (U);
        r++;
      }
    }
    if (++i >= uri_hash_prime) {
      i -= uri_hash_prime;
    }
  }
  garbage_collector.cur_idx = i;
  return r;
}
