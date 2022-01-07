
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_uri {int * data; } ;
struct amortization_counter {scalar_t__ value; } ;


 int * TAT ;
 size_t acounter_off ;
 int amortization_counter_types ;
 int amortization_counter_update (int *,struct amortization_counter*) ;
 int assert (int) ;

void debug_check_acounters_in_increasing_order (struct cache_uri *U) {
  int i;
  struct amortization_counter *D = ((void*)0), *C = (struct amortization_counter *) &U->data[acounter_off];
  for (i = 0; i < amortization_counter_types; i++) {
    amortization_counter_update (&TAT[i], C);
    if (D) {
      assert (D->value <= C->value);
    }
    D = C;
    C++;
  }
}
