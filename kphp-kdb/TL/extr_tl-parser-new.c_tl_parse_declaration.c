
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct tree {scalar_t__ type; int nc; TYPE_1__** c; } ;
struct TYPE_5__ {int type; } ;


 int assert (int) ;
 int tl_parse_builtin_combinator_decl (TYPE_1__*,int) ;
 int tl_parse_combinator_decl (TYPE_1__*,int) ;
 int tl_parse_final_decl (TYPE_1__*,int) ;
 int tl_parse_partial_app_decl (TYPE_1__*,int) ;


 scalar_t__ type_declaration ;



int tl_parse_declaration (struct tree *T, int fun) {
  assert (T->type == type_declaration);
  assert (T->nc == 1);
  switch (T->c[0]->type) {
  case 130:
    return tl_parse_combinator_decl (T->c[0], fun);
  case 128:
    return tl_parse_partial_app_decl (T->c[0], fun);
  case 129:
    return tl_parse_final_decl (T->c[0], fun);
  case 131:
    return tl_parse_builtin_combinator_decl (T->c[0], fun);
  default:
    assert (0);
    return 0;
  }
}
