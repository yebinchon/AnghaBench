
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_expression {struct tl_expression* next; struct tl_expression* prev; } ;


 int vkprintf (int,char*,struct tl_expression*) ;

void tl_list_expressions_init (struct tl_expression *E) {
  vkprintf (4, "tl_list_expressions_init (%p)\n", E);
  E->prev = E->next = E;
}
