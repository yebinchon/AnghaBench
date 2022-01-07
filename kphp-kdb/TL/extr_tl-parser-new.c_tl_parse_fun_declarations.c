
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {scalar_t__ type; int nc; int * c; } ;


 int TL_TRY_PES (int ) ;
 int assert (int) ;
 int tl_parse_declaration (int ,int) ;
 scalar_t__ type_fun_declarations ;

int tl_parse_fun_declarations (struct tree *T) {
  assert (T->type == type_fun_declarations);
  int i;
  for (i = 0; i < T->nc; i++) {
    TL_TRY_PES (tl_parse_declaration (T->c[i], 1));
  }
  return 1;
}
