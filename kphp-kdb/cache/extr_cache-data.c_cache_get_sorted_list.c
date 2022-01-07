
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cache_uri {int last_access; } ;
typedef enum cache_sorted_order { ____Placeholder_cache_sorted_order } cache_sorted_order ;
typedef int cache_top_access_result_t ;
struct TYPE_4__ {struct cache_uri** H; } ;
typedef TYPE_1__ cache_heap_t ;


 int cache_output_heap (int *,TYPE_1__*,int,int,int) ;
 int cache_top_fill_heap (TYPE_1__*,int,int,int,int,int,int) ;
 int cgsl_order_top ;
 int log_last_ts ;

int cache_get_sorted_list (cache_top_access_result_t *R, int T, enum cache_sorted_order order, int limit, int flags, int min_rate) {
  cache_heap_t Heap;
  int cnt = cache_top_fill_heap (&Heap, T, order, limit, (flags & 8) ? 1 : 0, (flags & 16) ? 1 : 0, min_rate);
  if (cnt < 0) {
    return cnt;
  }
  return cache_output_heap (R, &Heap, cnt, flags & (1 + 2 + 4), min_rate);
}
