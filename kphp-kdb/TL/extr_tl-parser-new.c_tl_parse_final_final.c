
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree {scalar_t__ type; int nc; TYPE_1__** c; } ;
struct tl_type {int flags; } ;
struct TYPE_2__ {int text; int len; } ;


 int TL_ERROR (char*,int ,int ) ;
 int TL_FAIL ;
 int assert (int) ;
 struct tl_type* tl_get_type (int ,int ) ;
 scalar_t__ type_final_final ;

int tl_parse_final_final (struct tree *T) {
  assert (T->type == type_final_final);
  assert (T->nc == 1);
  struct tl_type *R;
  if ((R = tl_get_type (T->c[0]->text, T->c[0]->len))) {
    R->flags |= 1;
    return 1;
  } else {
    TL_ERROR ("Final statement for type `%.*s` before declaration\n", T->c[0]->len, T->c[0]->text);
    TL_FAIL;
  }
}
