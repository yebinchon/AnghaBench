
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_uri {int * data; } ;
struct amortization_counter {double value; } ;


 size_t acounter_off ;
 int amortization_counter_types ;

double cache_get_uri_heuristic (const struct cache_uri *U) {
  int i;
  struct amortization_counter *C = (struct amortization_counter *) &U->data[acounter_off];
  double res = C->value;
  C++;
  for (i = 1; i < amortization_counter_types; i++) {
    if (res < C->value) {
      res = C->value;
    }
    C++;
  }
  return res;
}
