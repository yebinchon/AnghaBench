
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int diagonal_gather_methods ;
 int diagonal_queries ;
 int merge_forward (int *) ;

int default_query_diagonal_forward (void) {
  diagonal_queries ++;
  merge_forward (&diagonal_gather_methods);
  return 0;
}
