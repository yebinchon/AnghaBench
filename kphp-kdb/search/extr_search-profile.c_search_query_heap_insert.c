
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int search_query_heap_en_t ;


 scalar_t__ SEARCH_QUERY_HEAP_SIZE ;
 scalar_t__ SQH_SIZE ;
 int search_query_heapify_back (int *,scalar_t__) ;
 int search_query_heapify_front (int *,int) ;

__attribute__((used)) static void search_query_heap_insert (search_query_heap_en_t *E) {
  if (SQH_SIZE == SEARCH_QUERY_HEAP_SIZE) {
    search_query_heapify_front (E, 1);
  } else {
    search_query_heapify_back (E, ++SQH_SIZE);
  }
}
