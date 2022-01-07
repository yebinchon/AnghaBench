
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_weights_set_half_life {int dummy; } ;


 scalar_t__ LEV_WEIGHTS_SET_HALF_LIFE ;
 int WEIGHTS_MAX_COORDS ;
 struct lev_weights_set_half_life* alloc_log_event (scalar_t__,int,int) ;
 int unalloc_log_event (int) ;
 int weights_set_half_life (struct lev_weights_set_half_life*) ;

int do_weights_set_half_life (int coord_id, int half_life) {
  if (coord_id < 0 || coord_id >= WEIGHTS_MAX_COORDS || half_life <= 0) {
    return -1;
  }
  struct lev_weights_set_half_life *E = alloc_log_event (LEV_WEIGHTS_SET_HALF_LIFE + coord_id, sizeof (*E), half_life);
  int r = weights_set_half_life (E);
  if (r <= 0) {
    unalloc_log_event (sizeof (*E));
  }
  return r;
}
