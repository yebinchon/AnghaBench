
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree {scalar_t__ type; int nc; TYPE_1__** c; } ;
struct TYPE_2__ {int text; int len; } ;


 int TL_ERROR (char*,int ,int ) ;
 int TL_FAIL ;
 int assert (int) ;
 scalar_t__ tl_get_type (int ,int ) ;
 scalar_t__ type_final_new ;

int tl_parse_final_new (struct tree *T) {
  assert (T->type == type_final_new);
  assert (T->nc == 1);
  if (tl_get_type (T->c[0]->text, T->c[0]->len)) {
    TL_ERROR ("New statement: type `%.*s` already declared\n", T->c[0]->len, T->c[0]->text);
    TL_FAIL;
  } else {
    return 1;
  }
}
