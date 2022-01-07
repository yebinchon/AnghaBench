
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef scalar_t__ val_type ;
struct TYPE_13__ {scalar_t__ type; scalar_t__ dtype; int v_int; size_t v_fid; } ;
struct TYPE_14__ {int vn; int is_const; TYPE_2__ tok; struct TYPE_14__** v; } ;
typedef TYPE_3__ node ;
struct TYPE_12__ {size_t type; } ;
struct TYPE_11__ {TYPE_1__* fields; } ;


 size_t FN ;
 int IS_CONST (scalar_t__) ;
 int IS_STR (scalar_t__) ;
 TYPE_10__* _cur_type ;
 int assert (int) ;
 scalar_t__ get_op_type (scalar_t__,scalar_t__) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 int node_pfree (TYPE_3__*) ;
 scalar_t__ op_and ;
 scalar_t__ op_or ;
 scalar_t__ op_shl ;
 scalar_t__ op_shr ;
 int recalc_node (TYPE_3__*) ;
 scalar_t__* std_t ;
 scalar_t__ t_fid ;
 scalar_t__ t_var ;
 int to_bool (TYPE_3__*) ;
 TYPE_3__* tree_conv (TYPE_3__*,scalar_t__) ;
 scalar_t__ v_cstring ;
 scalar_t__ v_err ;
 scalar_t__ v_fid ;
 scalar_t__ v_int ;
 scalar_t__ v_long ;
 scalar_t__ v_string ;

int simplify_tree (node *v) {
  if (v->tok.type == op_and || v->tok.type == op_or) {
    int need = v->tok.type == op_and ? 0 : 1;

    int is_const = 1;
    v->tok.dtype = v_int;
    int i;

    for (i = 0; i < v->vn; i++) {
      if (!simplify_tree (v->v[i])) {
        return 0;
      }
      is_const &= v->v[i]->is_const;

      if (v->v[i]->tok.dtype != v_int && v->v[i]->tok.dtype != v_long) {
        return 0;
      }

      if (v->v[i]->is_const) {
        int x = to_bool (v->v[i]);
        if (x == need) {
          v->tok.v_int = need;
          v->is_const = is_const;


          node_pfree (v);
          return 1;
        }

      }
    }
    v->is_const = is_const;
    if (is_const) {
      v->tok.v_int = 1 - need;
    }

    node_pfree (v);
    return 1;
  } else {
    if (v->vn == 0 && !IS_CONST(v->tok.type)) {
      assert (v->tok.type == t_var);

      v->is_const = v->tok.dtype != v_fid;

      if (v->tok.dtype == v_fid) {
        v->tok.type = t_fid;
        v->tok.dtype = std_t[_cur_type->fields[v->tok.v_fid].type + FN];
      }
    } else {
      int i;
      int is_const = 1;
      val_type conv = v_int;

      for (i = 0; i < v->vn; i++) {
        if (!simplify_tree (v->v[i])) {
          return 0;
        }
        is_const &= v->v[i]->is_const;
        conv = max (conv, v->v[i]->tok.dtype);
      }

      if (v->tok.type == op_shr && IS_STR(conv)) {
        void *tmp;
        tmp = v->v[0], v->v[0] = v->v[1], v->v[1] = tmp;
        v->tok.type = op_shl;
      }

      if (conv == v_string) {
        conv = v_cstring;
      }
      for (i = 0; i < v->vn; i++) {
        if (v->v[i]->tok.dtype != conv) {
          int f1 = IS_STR(conv), f2 = IS_STR(v->v[i]->tok.dtype);
          if (f1 && f2) {
            continue;
          }

          v->v[i] = tree_conv (v->v[i], conv);

          if (v->v[i]->is_const) {
            if (!recalc_node (v->v[i])) {
              return 0;
            }
          }
        }
      }
      v->tok.dtype = get_op_type (conv, v->tok.type);
      if (v->tok.dtype == v_err) {
        return 0;
      }
      v->is_const = is_const;

      if (is_const) {
        if (!recalc_node (v)) {
          return 0;
        }
        node_pfree (v);
      } else {
      }
    }
  }

  return 1;
}
