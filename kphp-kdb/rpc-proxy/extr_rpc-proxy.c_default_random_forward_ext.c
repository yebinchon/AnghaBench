
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tot_buckets; int * buckets; } ;


 TYPE_1__* CC ;
 int assert (int) ;
 int lrand48 () ;
 int query_forward (int ) ;
 scalar_t__ tl_fetch_error () ;
 int tl_fetch_mark_delete () ;
 int tl_fetch_mark_restore () ;

int default_random_forward_ext (void) {
  int n = lrand48 ();
  if (tl_fetch_error ()) {
    tl_fetch_mark_delete ();
    return -1;
  }
  assert (CC->tot_buckets);
  assert (n >= 0);
  n %= CC->tot_buckets;
  tl_fetch_mark_restore ();
  return query_forward (CC->buckets[n]);
}
