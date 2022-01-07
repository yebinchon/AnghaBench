
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_weights_incr {int value; } ;


 scalar_t__ LEV_WEIGHTS_INCR ;
 int WEIGHTS_MAX_COORDS ;
 struct lev_weights_incr* alloc_log_event (scalar_t__,int,int) ;
 int assert (int) ;
 int weights_incr (struct lev_weights_incr*) ;

int do_weights_incr (int vector_id, int coord_id, int value) {

  assert (coord_id >= 0 && coord_id < WEIGHTS_MAX_COORDS);
  struct lev_weights_incr *E = alloc_log_event (LEV_WEIGHTS_INCR + coord_id, sizeof (*E), vector_id);
  E->value = value;
  return weights_incr (E);
}
