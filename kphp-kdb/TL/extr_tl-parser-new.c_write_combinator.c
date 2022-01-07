
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree_var_value_t ;
struct tl_constructor {int name; scalar_t__ right; scalar_t__ left; int id; TYPE_1__* type; } ;
struct TYPE_2__ {int name; } ;


 int TLS_COMBINATOR_LEFT ;
 int TLS_COMBINATOR_LEFT_BUILTIN ;
 int TLS_COMBINATOR_RIGHT ;
 int TLS_COMBINATOR_RIGHT_V2 ;
 int assert (scalar_t__) ;
 scalar_t__ is_builtin_type (int ) ;
 int schema_version ;
 int wint (int) ;
 int write_tree (scalar_t__,int,int **,int*) ;
 int wstr (int ) ;

void write_combinator (struct tl_constructor *c) {
  wint (c->name);
  wstr (c->id);
  wint (c->type ? c->type->name : 0);
  tree_var_value_t *T = 0;
  int x = 0;
  assert (c->right);
  if (c->left) {
    if (schema_version >= 1 && is_builtin_type (c->id)) {
      wint (TLS_COMBINATOR_LEFT_BUILTIN);
    } else {
      if (schema_version >= 1) {
        wint (TLS_COMBINATOR_LEFT);
      }

      write_tree (c->left, 0, &T, &x);
    }
  } else {
    if (schema_version >= 1) {
      wint (TLS_COMBINATOR_LEFT);
      wint (0);
    } else {
      wint (-11);
    }
  }
  if (schema_version >= 1) {
    wint (schema_version >= 2 ? TLS_COMBINATOR_RIGHT_V2 : TLS_COMBINATOR_RIGHT);
  }
  write_tree (c->right, 1, &T, &x);
}
