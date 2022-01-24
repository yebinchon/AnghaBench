#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ val_type ;
struct TYPE_13__ {scalar_t__ type; scalar_t__ dtype; int v_int; size_t v_fid; } ;
struct TYPE_14__ {int vn; int is_const; TYPE_2__ tok; struct TYPE_14__** v; } ;
typedef  TYPE_3__ node ;
struct TYPE_12__ {size_t type; } ;
struct TYPE_11__ {TYPE_1__* fields; } ;

/* Variables and functions */
 size_t FN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 TYPE_10__* _cur_type ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ op_and ; 
 scalar_t__ op_or ; 
 scalar_t__ op_shl ; 
 scalar_t__ op_shr ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 scalar_t__* std_t ; 
 scalar_t__ t_fid ; 
 scalar_t__ t_var ; 
 int FUNC7 (TYPE_3__*) ; 
 TYPE_3__* FUNC8 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ v_cstring ; 
 scalar_t__ v_err ; 
 scalar_t__ v_fid ; 
 scalar_t__ v_int ; 
 scalar_t__ v_long ; 
 scalar_t__ v_string ; 

int FUNC9 (node *v) {
  if (v->tok.type == op_and || v->tok.type == op_or) {
/*    node **a = mem;
    collect (v, v->tok.type);
//    int an = mem - a;

    mem = a;
    //simplify
    //token_type t = get_type ()
    assert (0);*/

    int need = v->tok.type == op_and ? 0 : 1;

    int is_const = 1;
    v->tok.dtype = v_int;
    int i;

    for (i = 0; i < v->vn; i++) {
      if (!FUNC9 (v->v[i])) {
        return 0;
      }
      is_const &= v->v[i]->is_const;

      if (v->v[i]->tok.dtype != v_int && v->v[i]->tok.dtype != v_long) {
        return 0;
      }

      if (v->v[i]->is_const) {
        int x = FUNC7 (v->v[i]);
        if (x == need) {
          v->tok.v_int = need;
          v->is_const = is_const;
//TODO why do not do node_pfree here?
// arseny30: Checking...
          FUNC5 (v);
          return 1;
        }
//TODO can we delete node v->v[i] here?
      }
    }
    v->is_const = is_const;
    if (is_const) {
      v->tok.v_int = 1 - need;
    }

    FUNC5 (v);
    return 1;
  } else {
    if (v->vn == 0 && !FUNC0(v->tok.type)) { // one var
      FUNC2 (v->tok.type == t_var);

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
        if (!FUNC9 (v->v[i])) {
          return 0;
        }
        is_const &= v->v[i]->is_const;
        conv = FUNC4 (conv, v->v[i]->tok.dtype);
      }

      if (v->tok.type == op_shr && FUNC1(conv)) {
        void *tmp;
        tmp = v->v[0], v->v[0] = v->v[1], v->v[1] = tmp;
        v->tok.type = op_shl;
      }

      if (conv == v_string) {
        conv = v_cstring;
      }
      for (i = 0; i < v->vn; i++) {
        if (v->v[i]->tok.dtype != conv) {
          int f1 = FUNC1(conv), f2 = FUNC1(v->v[i]->tok.dtype);
          if (f1 && f2) {
            continue;
          }

          v->v[i] = FUNC8 (v->v[i], conv);

          if (v->v[i]->is_const) {
            if (!FUNC6 (v->v[i])) {
              return 0;
            }
          }
        }
      }
      v->tok.dtype = FUNC3 (conv, v->tok.type);
      if (v->tok.dtype == v_err) {
        return 0;
      }
      v->is_const = is_const;

      if (is_const) {
        if (!FUNC6 (v)) {
          return 0;
        }
        FUNC5 (v);
      } else {
        /*
        if (v->tok.type == op_shl && IS_STR(v->v[0]->tok.dtype) && v->v[0]->is_const) {
          v->v[0]->kn = strlen (v->v[0]->tok.v_string) + 1;
          v->v[0]->kmp = dl_malloc (sizeof (int) * v->v[0]->kn);
//          fprintf (stderr, "allocated %p %d\n", v->v[0]->kmp, v->v[0]->kn);
          dl_kmp (v->v[0]->tok.v_string, v->v[0]->kmp);
        }
        */
      }
    }
  }

  return 1;
}