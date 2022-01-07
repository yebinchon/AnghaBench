
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cpu_time; } ;
typedef TYPE_1__ search_query_heap_en_t ;



__attribute__((used)) static int cmp_search_queries (const void *a, const void *b) {
  const search_query_heap_en_t *A = *((const search_query_heap_en_t **) a);
  const search_query_heap_en_t *B = *((const search_query_heap_en_t **) b);
  if (A->cpu_time < B->cpu_time) { return -1; }
  if (A->cpu_time > B->cpu_time) { return 1; }
  return 0;
}
