
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int step; long long tot_buckets; int * buckets; } ;


 TYPE_1__* CC ;
 int assert (long long) ;
 int query_forward (int ) ;
 scalar_t__ tl_fetch_error () ;
 int tl_fetch_int () ;
 long long tl_fetch_long () ;
 int tl_fetch_mark_delete () ;
 int tl_fetch_mark_restore () ;

int default_firstlong_forward_ext (void) {
  tl_fetch_int ();
  long long n = tl_fetch_long ();
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
