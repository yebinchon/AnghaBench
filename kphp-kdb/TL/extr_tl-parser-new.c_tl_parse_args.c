
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tree {scalar_t__ type; int nc; TYPE_1__** c; } ;
struct tl_combinator_tree {int dummy; } ;
struct TYPE_3__ {int type; } ;


 int assert (int) ;
 struct tl_combinator_tree* tl_parse_args134 (TYPE_1__*) ;
 struct tl_combinator_tree* tl_parse_args2 (TYPE_1__*) ;
 scalar_t__ type_args ;




 scalar_t__ type_optional_arg_def ;
 int vkprintf (int,char*,scalar_t__) ;

struct tl_combinator_tree *tl_parse_args (struct tree *T) {
  vkprintf (2, "tl_parse_args T->type = %d\n", T->type - type_optional_arg_def);
  assert (T->type == type_args);
  assert (T->nc == 1);
  switch (T->c[0]->type) {
  case 131:
    return tl_parse_args134 (T->c[0]);
  case 130:
    return tl_parse_args2 (T->c[0]);
  case 129:
    return tl_parse_args134 (T->c[0]);
  case 128:
    return tl_parse_args134 (T->c[0]);
  default:
    assert (0);
    return 0;
  }
}
