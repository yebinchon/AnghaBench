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
struct TYPE_2__ {int ref_cnt; int flags; int /*<<< orphan*/ * methods; } ;
struct tl_tree_var_type {int var_num; TYPE_1__ self; } ;
typedef  void tl_tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FLAG_BARE ; 
 int FLAG_NOVAR ; 
 int /*<<< orphan*/  persistent_tree_nodes ; 
 scalar_t__ FUNC1 () ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  tl_pvar_type_methods ; 
 int /*<<< orphan*/  total_ref_cnt ; 
 int /*<<< orphan*/  total_tree_nodes_existed ; 
 struct tl_tree_var_type* FUNC3 (int) ; 

struct tl_tree *FUNC4 (int *var_num) {
  struct tl_tree_var_type *T = FUNC3 (sizeof (*T));
  FUNC0 (sizeof (*T));
//  T->self.flags = 0;
  T->self.ref_cnt = 1;
  total_ref_cnt ++;
  persistent_tree_nodes ++;
  total_tree_nodes_existed ++;
  T->self.methods = &tl_pvar_type_methods;
  T->var_num = FUNC2 ();
  T->self.flags = FUNC2 ();
  if (FUNC1 ()) {
    return 0;
  }
  if (T->var_num >= *var_num) {  
    *var_num = T->var_num + 1;
  }
  if (T->self.flags & (FLAG_NOVAR | FLAG_BARE)) {
    return 0;
  }
  return (void *)T;
}