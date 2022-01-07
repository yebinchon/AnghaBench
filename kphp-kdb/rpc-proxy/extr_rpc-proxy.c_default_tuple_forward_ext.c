
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cluster_mode; int step; int tot_buckets; int * buckets; } ;


 TYPE_1__* CC ;
 int assert (int) ;
 int query_forward (int ) ;
 scalar_t__ tl_fetch_error () ;
 int tl_fetch_int () ;
 int tl_fetch_mark_delete () ;
 int tl_fetch_mark_restore () ;

int default_tuple_forward_ext (int size) {
  tl_fetch_int ();
  int x = (CC->cluster_mode & 7);
  x --;
  if (x < 0) { x = 0; }
  if (x > size - 1) { x = size - 1; }
  int i;
  for (i = 0; i < x; i++) {
    tl_fetch_int ();
  }
  int n = tl_fetch_int ();
  if (n < 0) { n = -n; }
  if (n < 0) { n = 0; }
  if (tl_fetch_error ()) {
    tl_fetch_mark_delete ();
    return -1;
  }
  if (CC->step) {
    n /= CC->step;
  }
  assert (CC->tot_buckets);
  n %= CC->tot_buckets;
  tl_fetch_mark_restore ();
  return query_forward (CC->buckets[n]);
}
