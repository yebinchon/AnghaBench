
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_uri {int * data; } ;
struct amortization_counter {float value; } ;


 int * TAT ;
 size_t acounter_off ;
 int amortization_counter_types ;
 int amortization_counter_update (int *,struct amortization_counter*) ;
 int assert (int) ;

float cache_uri_get_acounter_value (struct cache_uri *U, int id) {
  assert (id >= 0 && id < amortization_counter_types);
  struct amortization_counter *C = (struct amortization_counter *) &U->data[acounter_off];
  C += id;
  amortization_counter_update (&TAT[id], C);
  return C->value;
}
