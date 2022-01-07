
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_expression {int section; struct tl_expression* next; struct tl_expression* prev; } ;
struct tl_compiler {struct tl_expression* expr; } ;


 int assert (int) ;
 int tl_expression_free (struct tl_expression*) ;

__attribute__((used)) static void tl_list_expressions_free (struct tl_compiler *C, int section) {
  assert (section >= 0 && section < 2);
  struct tl_expression *L = &C->expr[section], *E, *T;
  for (E = L->next; E != L; E = T) {
    assert (E->section == section);
    T = E->next;
    tl_expression_free (E);
  }
  L->prev = L->next = L;
}
