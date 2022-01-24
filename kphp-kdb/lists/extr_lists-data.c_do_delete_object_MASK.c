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
struct lev_del_obj {int dummy; } ;
typedef  int /*<<< orphan*/  object_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LEV_LI_DEL_OBJ ; 
 void* FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ lev_object_id_bytes ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ revlist_metafile_mode ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 

int FUNC5 (object_id_t object_id) {
  if (revlist_metafile_mode && FUNC3 (object_id, 1) < 0) {
    return -2;
  }
  void *E = FUNC1 (LEV_LI_DEL_OBJ, sizeof (struct lev_del_obj) + lev_object_id_bytes, FUNC0(object_id));
  FUNC4 (E, object_id);
  return FUNC2 (object_id);
}