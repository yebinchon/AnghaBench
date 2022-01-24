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
typedef  int /*<<< orphan*/  object_id_t ;
typedef  int /*<<< orphan*/  listree_t ;
typedef  int /*<<< orphan*/  list_t ;
typedef  int /*<<< orphan*/  list_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  OTree ; 
 int SUBCATS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ metafile_mode ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6 (list_id_t list_id, object_id_t object_id, int mode) {
  if (metafile_mode && FUNC4 (list_id, 1) < 0) {
    return -2;
  }
  list_t *L = FUNC0 (list_id, 2);
  if (!L) {
    return -1;
  }
  FUNC5 (L);
  int cat = mode & (SUBCATS-1);
  if (!(mode & (2*SUBCATS-1))) {
    cat = -1;
  }
  listree_t LI, *LT = &LI;

  if (cat < 0) {
    return FUNC2 (&OTree, object_id, 1);
  } else {
    FUNC3 (LT, cat);
    return FUNC1 (LT, object_id, 1);
  }
  //return listree_get_pos_inderect (LT, object_id, 1);
}