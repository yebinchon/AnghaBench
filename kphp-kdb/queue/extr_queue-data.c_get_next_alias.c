
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ll ;


 int CLOCK_REALTIME ;
 int assert (int) ;
 scalar_t__ engine_id ;
 int engine_n ;
 scalar_t__ get_utime (int ) ;

ll get_next_alias (void) {
  static ll st = -1;
  if (st == -1) {
    st = ((ll)get_utime(CLOCK_REALTIME) + 1001) * 1000000;
    st /= engine_n;
    st *= engine_n;
    st += engine_id;
  }
  st += engine_n;
  assert (st > 1000000000);
  return st;
}
