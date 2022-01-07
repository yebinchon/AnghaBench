
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_isearch_black_list {int type; int text; } ;


 int black_list_set_string (int ,int) ;

int black_list_set (struct lev_isearch_black_list *E) {
  black_list_set_string (E->text, E->type & 1);
  return 1;
}
