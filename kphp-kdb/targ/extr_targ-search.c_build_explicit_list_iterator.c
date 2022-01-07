
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct explicit_list_iterator {int* last; int* cur; int pos; int jump_to; } ;
typedef int iterator_t ;


 int build_empty_iterator () ;
 int explicit_list_iterator_jump_to ;
 struct explicit_list_iterator* zmalloc (int) ;

iterator_t build_explicit_list_iterator (int *List, int size) {
  if (size <= 0) {
    return build_empty_iterator ();
  }
  struct explicit_list_iterator *IL = zmalloc (sizeof (struct explicit_list_iterator));
  IL->jump_to = explicit_list_iterator_jump_to;
  IL->last = List + size;
  IL->cur = List + 1;
  IL->pos = List[0];

  return (iterator_t) IL;
}
