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
struct lev_delete_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_TARG_DELGROUP ; 
 struct lev_delete_group* FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct lev_delete_group*) ; 

int FUNC2 (int group_id) {
  struct lev_delete_group *E = FUNC0 (LEV_TARG_DELGROUP, 8, group_id);
  return FUNC1 (E);
}