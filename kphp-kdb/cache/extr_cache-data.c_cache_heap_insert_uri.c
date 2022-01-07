
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_uri {int * data; } ;
struct amortization_counter {int dummy; } ;


 int amortization_counter_update (int ,struct amortization_counter*) ;
 int cache_heap_insert (int ,struct cache_uri*) ;
 size_t heap_acounter_off ;
 int heap_foreach ;
 int tbl_foreach ;

__attribute__((used)) static void cache_heap_insert_uri (struct cache_uri *U) {
  struct amortization_counter *C = ((struct amortization_counter *) &U->data[heap_acounter_off]);
  amortization_counter_update (tbl_foreach, C);
  cache_heap_insert (heap_foreach, U);
}
