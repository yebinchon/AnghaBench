#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int ref_cnt; int flags; int /*<<< orphan*/ * methods; } ;
struct tl_tree_array {int args_num; TYPE_1__ self; TYPE_2__** args; int /*<<< orphan*/  multiplicity; } ;
typedef  void tl_tree ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FLAG_NOVAR ; 
 int /*<<< orphan*/  persistent_tree_nodes ; 
 scalar_t__ FUNC1 (TYPE_2__**,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int schema_version ; 
 int /*<<< orphan*/  tl_parray_methods ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  total_ref_cnt ; 
 int /*<<< orphan*/  total_tree_nodes_existed ; 
 void* FUNC6 (int) ; 

struct tl_tree *FUNC7 (int *var_num) {
  struct tl_tree_array *T = FUNC6 (sizeof (*T));
  FUNC0 (sizeof (*T));
  T->self.ref_cnt = 1;
  total_ref_cnt ++;
  persistent_tree_nodes ++;
  total_tree_nodes_existed ++;
  T->self.methods = &tl_parray_methods;
  T->self.flags = 0;
  if (schema_version >= 2) {
    T->multiplicity = FUNC2 (var_num);
  } else {
    T->multiplicity = FUNC3 (var_num);
  }
  if (!T->multiplicity) {
    return 0;
  }
  T->args_num = FUNC5 ();
  if (T->args_num <= 0 || T->args_num > 1000 || FUNC4 ()) {
    return 0;
  }
  T->args = FUNC6 (sizeof (void *) * T->args_num);
  FUNC0 (sizeof (void *) * T->args_num);
  if (FUNC1 (T->args, T->args_num, var_num) < 0) {
    return 0;
  }
  T->self.flags |= FLAG_NOVAR;
  int i;
  for (i = 0; i < T->args_num; i++) {
    if (!(T->args[i]->flags & FLAG_NOVAR)) {
      T->self.flags &= ~FLAG_NOVAR;
    }
  }
  return (void *)T;
}