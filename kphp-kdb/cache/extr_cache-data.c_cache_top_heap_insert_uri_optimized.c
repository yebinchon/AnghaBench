
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache_uri {int * data; } ;
struct amortization_counter {scalar_t__ value; } ;
struct TYPE_2__ {int size; int max_size; struct cache_uri** H; } ;


 scalar_t__ GET_HEAP_VALUE (int) ;
 int amortization_counter_update (int ,struct amortization_counter*) ;
 size_t heap_acounter_off ;
 TYPE_1__* heap_foreach ;
 int tbl_foreach ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void cache_top_heap_insert_uri_optimized (struct cache_uri *U) {
  struct amortization_counter *C = ((struct amortization_counter *) &U->data[heap_acounter_off]);
  int i, j;
  if (unlikely(heap_foreach->size < heap_foreach->max_size)) {
    amortization_counter_update (tbl_foreach, C);
    i = ++(heap_foreach->size);
    while (i > 1) {
      j = i >> 1;
      if (GET_HEAP_VALUE(j) <= C->value) {
        break;
      }
      heap_foreach->H[i] = heap_foreach->H[j];
      i = j;
    }
    heap_foreach->H[i] = U;
  } else {
    if (unlikely(GET_HEAP_VALUE(1) < C->value)) {
      amortization_counter_update (tbl_foreach, C);
      if (GET_HEAP_VALUE(1) < C->value) {
        i = 1;
        while (1) {
          j = i << 1;
          if (j > heap_foreach->size) {
            break;
          }
          if (j < heap_foreach->size && GET_HEAP_VALUE(j) > GET_HEAP_VALUE(j+1)) {
            j++;
          }
          if (C->value <= GET_HEAP_VALUE(j)) {
            break;
          }
          heap_foreach->H[i] = heap_foreach->H[j];
          i = j;
        }
        heap_foreach->H[i] = U;
      }
    }
  }
}
