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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 () ; 

__attribute__((used)) static inline void FUNC7 (object_id_t object_id, global_id_t global_id, int oldflags, int flags) {
  int old_cat = oldflags & (SUBCATS - 1);
  int new_cat = flags & (SUBCATS - 1);
  if (new_cat != old_cat) {
    listree_t OT1, OT2;
    listree_xglobal_t GT1, GT2;
    FUNC5 (&OT1, old_cat);  
    FUNC5 (&OT2, new_cat);  
    FUNC4 (&GT1, old_cat);  
    FUNC4 (&GT2, new_cat);  
    FUNC1 (&OT1, object_id, FUNC6 ()/*global_id * Y_MULT*/);
    FUNC3 (&OT2, object_id, FUNC6 ()/*global_id * Y_MULT*/);
    #ifdef LISTS_GT
    listree_delete_global (&GT1, global_id, object_id);
    listree_insert_global (&GT2, global_id, object_id);
    #else
    FUNC1 (&GT1, global_id, object_id * Y_MULT);
    FUNC3 (&GT2, global_id, object_id * Y_MULT);
    #endif
  }
}