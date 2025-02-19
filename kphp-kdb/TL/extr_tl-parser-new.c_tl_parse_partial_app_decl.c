
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tree {scalar_t__ type; int nc; TYPE_1__** c; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 int TL_ERROR (char*) ;
 int TL_FAIL ;
 int assert (int) ;
 int tl_parse_partial_comb_app_decl (TYPE_1__*,int) ;
 int tl_parse_partial_type_app_decl (TYPE_1__*) ;
 scalar_t__ type_partial_app_decl ;
 scalar_t__ type_partial_comb_app_decl ;

int tl_parse_partial_app_decl (struct tree *T, int fun) {
  assert (T->type == type_partial_app_decl);
  assert (T->nc == 1);
  if (T->c[0]->type == type_partial_comb_app_decl) {
    return tl_parse_partial_comb_app_decl (T->c[0], fun);
  } else {
    if (fun) {
      TL_ERROR ("Partial type app in functions block\n");
      TL_FAIL;
    }
    return tl_parse_partial_type_app_decl (T->c[0]);
  }
}
