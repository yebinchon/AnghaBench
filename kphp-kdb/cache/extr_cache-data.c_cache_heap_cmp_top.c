
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_uri {int * data; } ;
struct amortization_counter {scalar_t__ value; } ;


 size_t heap_acounter_off ;
 scalar_t__ likely (int) ;
 int strcmp (int *,int *) ;
 int uri_off ;

__attribute__((used)) static int cache_heap_cmp_top (const void *a, const void *b) {
  const struct cache_uri *U = (const struct cache_uri *) a;
  const struct cache_uri *V = (const struct cache_uri *) b;
  struct amortization_counter *C = ((struct amortization_counter *) &U->data[heap_acounter_off]);
  struct amortization_counter *D = ((struct amortization_counter *) &V->data[heap_acounter_off]);
  return C->value > D->value ? -1 : likely(C->value < D->value) ? 1 : -strcmp (U->data + uri_off, V->data + uri_off);
}
