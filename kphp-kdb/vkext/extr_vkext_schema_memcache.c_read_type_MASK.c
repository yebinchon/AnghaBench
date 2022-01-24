#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int ref_cnt; int flags; int /*<<< orphan*/ * methods; } ;
struct tl_tree_type {int children_num; TYPE_1__ self; TYPE_3__** children; TYPE_2__* type; } ;
typedef  void tl_tree ;
struct TYPE_9__ {int flags; } ;
struct TYPE_8__ {int arity; int params_types; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FLAG_NOVAR ; 
 int TLS_EXPR_NAT ; 
 int TLS_EXPR_TYPE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  persistent_tree_nodes ; 
 TYPE_3__* FUNC3 (int*) ; 
 TYPE_3__* FUNC4 (int*) ; 
 TYPE_3__* FUNC5 (int*) ; 
 int schema_version ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC6 () ; 
 void* FUNC7 () ; 
 int /*<<< orphan*/  tl_ptype_methods ; 
 TYPE_2__* FUNC8 (void*) ; 
 int /*<<< orphan*/  total_ref_cnt ; 
 int /*<<< orphan*/  total_tree_nodes_existed ; 
 int verbosity ; 
 void* FUNC9 (int) ; 

struct tl_tree *FUNC10 (int *var_num) {
  struct tl_tree_type *T = FUNC9 (sizeof (*T));
  FUNC0 (sizeof (*T));
  T->self.ref_cnt = 1;
  total_ref_cnt ++;
  persistent_tree_nodes ++;
  total_tree_nodes_existed ++;
  T->self.methods = &tl_ptype_methods;
 
  T->type = FUNC8 (FUNC7 ());
  if (!T->type) {
    return 0;
  }
  T->self.flags = FUNC7 ();
  T->children_num = FUNC7 ();
  if (verbosity >= 2) {
    FUNC2 (stderr, "T->flags = %d, T->chilren_num = %d\n", T->self.flags, T->children_num);
  }
  if (FUNC6 () || T->type->arity != T->children_num) {
    return 0;
  }
  if (T->children_num < 0 || T->children_num > 1000) {
    return 0;
  }
  T->children = FUNC9 (sizeof (void *) * T->children_num);
  FUNC0 (sizeof (void *) * T->children_num);
  int i;
  T->self.flags |= FLAG_NOVAR;
  for (i = 0; i < T->children_num; i++) {
    if (schema_version >= 2) {
      int t = FUNC7 ();
      if (FUNC6 ()) {
        return 0;
      }
      if (t == TLS_EXPR_NAT) {
        if (!(T->type->params_types & (1 << i))) {
          return 0;
        }
        T->children[i] = FUNC3 (var_num);
      } else if (t == TLS_EXPR_TYPE) {
        if ((T->type->params_types & (1 << i))) {
          return 0;
        }
        T->children[i] = FUNC5 (var_num);
      } else {
        return 0;
      }
    } else {
      T->children[i] = FUNC4 (var_num);
    }
    if (!T->children[i]) {
      return 0;
    }
    if (!FUNC1 (T->children[i]) && !(T->children[i]->flags & FLAG_NOVAR)) {
      T->self.flags &= ~FLAG_NOVAR;
    }
  }
  return (void *)T;
}