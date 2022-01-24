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
struct lev_sublist_flags {int xor_cond; int and_cond; scalar_t__ xor_set; scalar_t__ and_set; } ;
struct lev_generic {int dummy; } ;
struct lev_del_sublist {int dummy; } ;
typedef  int /*<<< orphan*/  list_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct lev_sublist_flags* FUNC1 (struct lev_sublist_flags*) ; 
 int /*<<< orphan*/  LEV_LI_DEL_SUBLIST ; 
 struct lev_sublist_flags* FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,struct lev_generic*) ; 
 scalar_t__ lev_list_id_bytes ; 
 scalar_t__ metafile_mode ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct lev_sublist_flags*,int /*<<< orphan*/ ) ; 

int FUNC7 (list_id_t list_id, int xor_cond, int and_cond) {
  if (FUNC3 (list_id) < 0) {
    return -1;
  }
  if (metafile_mode && FUNC5 (list_id, 1) < 0) {
    return -2;
  }
  struct lev_sublist_flags *EE, *E = FUNC2 (LEV_LI_DEL_SUBLIST, sizeof (struct lev_del_sublist) + lev_list_id_bytes, FUNC0 (list_id));
  FUNC6 (E, list_id);
  EE = FUNC1(E);
  EE->xor_cond = xor_cond;
  EE->and_cond = and_cond;
  EE->and_set = 0;
  EE->xor_set = 0;
  return FUNC4 (list_id, *(int *) &(EE->xor_cond), (struct lev_generic *)E);
}