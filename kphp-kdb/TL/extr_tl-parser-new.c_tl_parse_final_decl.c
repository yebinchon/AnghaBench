
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tree {scalar_t__ type; int nc; TYPE_1__** c; } ;
struct TYPE_4__ {int type; } ;


 int assert (int) ;
 int tl_parse_final_empty (TYPE_1__*) ;
 int tl_parse_final_final (TYPE_1__*) ;
 int tl_parse_final_new (TYPE_1__*) ;
 scalar_t__ type_final_decl ;




int tl_parse_final_decl (struct tree *T, int fun) {
  assert (T->type == type_final_decl);
  assert (!fun);
  assert (T->nc == 1);
  switch (T->c[0]->type) {
  case 128:
    return tl_parse_final_new (T->c[0]);
  case 129:
    return tl_parse_final_final (T->c[0]);
  case 130:
    return tl_parse_final_empty (T->c[0]);
  default:
    assert (0);
    return 0;
  }
}
