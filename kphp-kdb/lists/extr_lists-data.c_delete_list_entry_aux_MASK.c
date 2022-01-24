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
typedef  int object_id_t ;
typedef  int /*<<< orphan*/  listree_xglobal_t ;
typedef  int /*<<< orphan*/  listree_t ;
typedef  int global_id_t ;

/* Variables and functions */
 int SUBCATS ; 
 int Y_MULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 () ; 

__attribute__((used)) static inline void FUNC6 (object_id_t object_id, global_id_t global_id, int flags) {
  int cat = flags & (SUBCATS - 1);
  listree_t OTreeSub;
  listree_xglobal_t GTree, GTreeSub;
  FUNC4 (&OTreeSub, cat);
  FUNC2 (&GTree);
  FUNC3 (&GTreeSub, cat);
  FUNC1 (&OTreeSub, object_id, FUNC5 ()/*global_id * Y_MULT*/);
  #ifdef LISTS_GT
  listree_delete_global (&GTree, global_id, object_id);
  listree_delete_global (&GTreeSub, global_id, object_id);
  #else
  FUNC1 (&GTree, global_id, object_id * Y_MULT);
  FUNC1 (&GTreeSub, global_id, object_id * Y_MULT);
  #endif
}