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
struct lev_del_list {int dummy; } ;
typedef  int /*<<< orphan*/  list_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LEV_LI_DEL_LIST ; 
 void* FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct lev_generic*) ; 
 scalar_t__ lev_list_id_bytes ; 
 scalar_t__ metafile_mode ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 

int FUNC6 (list_id_t list_id) {
  if (FUNC2 (list_id) < 0) {
    return -1;
  }
  if (metafile_mode && FUNC4 (list_id, 1) < 0) {
    return -2;
  }
  void *E = FUNC1 (LEV_LI_DEL_LIST, sizeof (struct lev_del_list) + lev_list_id_bytes, FUNC0(list_id));
  FUNC5 (E, list_id);
  return FUNC3 (list_id, (struct lev_generic *)E);
}