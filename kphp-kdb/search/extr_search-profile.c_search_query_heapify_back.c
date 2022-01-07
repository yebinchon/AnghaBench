
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ cpu_time; } ;
typedef TYPE_1__ search_query_heap_en_t ;


 TYPE_1__* SQH ;
 int search_query_copy (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void search_query_heapify_back (search_query_heap_en_t *E, int i) {
  while (i > 1) {
    int j = (i >> 1);
    if (SQH[j].cpu_time <= E->cpu_time) { break; }
    search_query_copy (SQH + i, SQH + j);
    i = j;
  }
  search_query_copy (SQH + i, E);
}
