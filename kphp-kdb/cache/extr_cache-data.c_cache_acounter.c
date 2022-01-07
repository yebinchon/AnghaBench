
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_uri {int * data; } ;
struct amortization_counter_precise {double value; } ;
struct amortization_counter {double value; } ;


 int * TAT ;
 size_t acounter_off ;
 int amortization_counter_precise_increment (int *,struct amortization_counter_precise*,int ) ;
 int amortization_counter_update (int *,struct amortization_counter*) ;
 struct amortization_counter_precise* cum_access_counters ;
 int get_acounter_id_by_t (int) ;
 struct cache_uri* get_uri_f (char const* const,int ) ;
 scalar_t__ strcmp (char const* const,char*) ;

int cache_acounter (const char *const uri, int T, double *value) {
  const int id = get_acounter_id_by_t (T);
  if (id < 0) {
    return -1;
  }
  struct cache_uri *U = get_uri_f (uri, 0);
  if (U == ((void*)0)) {
    if (strcmp (uri, "__CUMULATIVE__")) {
      return -2;
    }
    struct amortization_counter_precise *C = cum_access_counters;
    C += id;
    amortization_counter_precise_increment (&TAT[id], C, 0);
    *value = C->value;
    return 0;
  } else {
    struct amortization_counter *C = (struct amortization_counter *) &U->data[acounter_off];
    C += id;
    amortization_counter_update (&TAT[id], C);
    *value = C->value;
    return 0;
  }
}
