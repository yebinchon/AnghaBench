
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache_uri {int * data; struct cache_uri* hnext; } ;
struct amortization_counter {int dummy; } ;
struct TYPE_2__ {int cur_idx; } ;


 struct cache_uri** H ;
 scalar_t__ TAT ;
 int acounter_off ;
 TYPE_1__ acounter_relax_collector ;
 int acounter_uncached_bucket_id ;
 int amortization_counter_update (scalar_t__,struct amortization_counter*) ;
 int cache_uri_bucket_reuse (struct cache_uri*) ;
 int uri_hash_prime ;

int cache_acounters_update_step (int max_steps) {
  const int off = acounter_off + acounter_uncached_bucket_id * sizeof (struct amortization_counter);
  int i = acounter_relax_collector.cur_idx, steps = 0, r = 0;
  while (steps < max_steps && r < max_steps) {
    steps++;
    struct cache_uri *U;
    for (U = H[i]; U != ((void*)0); U = U->hnext) {
      amortization_counter_update (TAT+acounter_uncached_bucket_id, (struct amortization_counter *) &U->data[off]);
      cache_uri_bucket_reuse (U);
      r++;
    }
    if (++i >= uri_hash_prime) {
      i -= uri_hash_prime;
    }
  }
  acounter_relax_collector.cur_idx = i;
  return r;
}
