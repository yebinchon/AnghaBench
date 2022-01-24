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
struct lev_generic {int dummy; } ;
struct lev_del_entry {int dummy; } ;
typedef  int /*<<< orphan*/  object_id_t ;
typedef  int /*<<< orphan*/  list_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LEV_LI_DEL_ENTRY ; 
 struct lev_del_entry* FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct lev_generic*) ; 
 scalar_t__ lev_list_object_bytes ; 
 scalar_t__ metafile_mode ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct lev_del_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6 (list_id_t list_id, object_id_t object_id) {
  if (FUNC2 (list_id) < 0) {
    return -1;
  }
  if (metafile_mode && FUNC4 (list_id, 1) < 0) {
    return -2;
  }

  struct lev_del_entry *E = FUNC1 (LEV_LI_DEL_ENTRY, sizeof (struct lev_del_entry) + lev_list_object_bytes, FUNC0 (list_id));
  FUNC5 (E, list_id, object_id);

  return FUNC3 (list_id, object_id, 1, (struct lev_generic *)E);
}