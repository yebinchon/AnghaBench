
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int val_type ;
struct TYPE_7__ {int dtype; int type; } ;
struct TYPE_8__ {int vn; int is_const; TYPE_1__ tok; struct TYPE_8__** v; } ;
typedef TYPE_2__ node ;


 scalar_t__ IS_STR (int ) ;
 TYPE_2__** dl_malloc0 (int) ;
 TYPE_2__* new_node () ;
 int op_conv ;
 int op_string ;
 int v_cstring ;

node *tree_conv (node *v, val_type new_type) {
  node *r = new_node();
  r->v = dl_malloc0 (sizeof (node *));
  r->vn = 1;
  r->v[0] = v;

  if (IS_STR (new_type)) {
    r->tok.type = op_string;
    r->tok.dtype = v_cstring;
  } else {
    r->tok.type = op_conv;
    r->tok.dtype = new_type;
  }

  r->is_const = v->is_const;

  return r;
}
