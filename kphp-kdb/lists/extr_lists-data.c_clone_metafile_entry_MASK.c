#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tree_ext_large_t ;
struct tree_payload {int /*<<< orphan*/  date; int /*<<< orphan*/  value; int /*<<< orphan*/  flags; scalar_t__ text; int /*<<< orphan*/  global_id; } ;
typedef  int /*<<< orphan*/  object_id_t ;

/* Variables and functions */
 int /*<<< orphan*/ * M_global_id_list ; 
 int /*<<< orphan*/  M_obj_id_list ; 
 int M_tot_entries ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OTree ; 
 struct tree_payload* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ TF_ZERO ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static tree_ext_large_t *FUNC8 (int temp_id) {
  FUNC3 (temp_id >= 0 && temp_id < M_tot_entries);
  object_id_t object_id = FUNC1 (M_obj_id_list, temp_id);
  tree_ext_large_t *T = FUNC4 (&OTree, object_id);
  FUNC3 (FUNC0 (T) == TF_ZERO);
  struct tree_payload *P = FUNC2 (T);
  P->global_id = M_global_id_list[temp_id];
  P->text = 0;
  P->flags = FUNC6 (temp_id);
  P->value = FUNC7 (temp_id);
  P->date = FUNC5 (temp_id);
  return T;
}