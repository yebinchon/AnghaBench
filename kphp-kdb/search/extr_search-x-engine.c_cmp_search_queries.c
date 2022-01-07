
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct search_query_heap_en {scalar_t__ cpu_time; } ;



int cmp_search_queries (const void *a, const void *b) {
  const struct search_query_heap_en *A = (const struct search_query_heap_en *) a;
  const struct search_query_heap_en *B = (const struct search_query_heap_en *) b;
  if (A->cpu_time < B->cpu_time) { return -1; }
  if (A->cpu_time > B->cpu_time) { return 1; }
  return 0;
}
