
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cache_uri {int * data; } ;
struct amortization_counter {int value; } ;
struct TYPE_5__ {int flags; int min_rate; int real_min_rate; size_t heap_acounter_off; int cnt; int * disk_filter; TYPE_2__* heap; } ;
typedef TYPE_1__ cache_top_access_result_t ;
struct TYPE_6__ {struct cache_uri** H; } ;
typedef TYPE_2__ cache_heap_t ;


 int disk_filter ;
 size_t heap_acounter_off ;
 size_t uri_off ;

__attribute__((used)) static int cache_output_heap (cache_top_access_result_t *R, cache_heap_t *heap, int cnt, int flags, int min_rate) {
  int k;
  R->heap = heap;
  R->flags = flags;
  R->min_rate = min_rate;
  R->real_min_rate = min_rate >= 1000000 ? min_rate * 1e-6 : min_rate;
  R->disk_filter = (R->flags & 0x80000000) ? &disk_filter : ((void*)0);
  R->heap_acounter_off = heap_acounter_off;
  int m = 0;
  for (k = 1; k <= cnt; k++) {
    struct cache_uri *U = heap->H[k];
    if (!U->data[uri_off]) {
      continue;
    }
    struct amortization_counter *C = ((struct amortization_counter *) &U->data[heap_acounter_off]);
    if (min_rate && C->value <= R->real_min_rate) {
      continue;
    }
    heap->H[++m] = heap->H[k];
  }
  R->cnt = m;
  return 0;
}
