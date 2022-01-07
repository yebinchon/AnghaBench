
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_weights_set_half_life {int type; int half_life; } ;


 int ** TAT ;
 int WEIGHTS_MAX_COORDS ;
 int weights_set_half_life (struct lev_weights_set_half_life*) ;

__attribute__((used)) static void init_amortization_tables (void) {
  int i;
  for (i = 0; i < WEIGHTS_MAX_COORDS; i++) {
    if (TAT[i] == ((void*)0)) {
      struct lev_weights_set_half_life E;
      E.type = i;
      E.half_life = 86400 * 30;
      weights_set_half_life (&E);
    }
  }
}
