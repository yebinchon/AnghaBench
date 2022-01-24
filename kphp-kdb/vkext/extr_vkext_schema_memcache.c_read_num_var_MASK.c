#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int flags; int ref_cnt; int /*<<< orphan*/ * methods; } ;
struct tl_tree_var_num {int var_num; TYPE_1__ self; void* dif; } ;
typedef  void tl_tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FLAG_NOVAR ; 
 int /*<<< orphan*/  persistent_tree_nodes ; 
 int schema_version ; 
 scalar_t__ FUNC1 () ; 
 void* FUNC2 () ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  tl_pvar_num_methods ; 
 int /*<<< orphan*/  total_ref_cnt ; 
 int /*<<< orphan*/  total_tree_nodes_existed ; 
 struct tl_tree_var_num* FUNC4 (int) ; 

struct tl_tree *FUNC5 (int *var_num) {
  struct tl_tree_var_num *T = FUNC4 (sizeof (*T));
  FUNC0 (sizeof (*T));
  T->self.flags = 0;
  T->self.ref_cnt = 1;
  total_ref_cnt ++;
  persistent_tree_nodes ++;
  total_tree_nodes_existed ++;
  T->self.methods = &tl_pvar_num_methods;;  
  if (schema_version >= 2) {
    T->dif = FUNC2 ();
  } else {
    T->dif = FUNC3 ();
  }
  T->var_num = FUNC2 ();
  if (FUNC1 ()) {
    return 0;
  }
  if (T->var_num >= *var_num) {
    *var_num = T->var_num + 1;
  }
  if (T->self.flags & FLAG_NOVAR) {
    return 0;
  }
  return (void *)T;
}