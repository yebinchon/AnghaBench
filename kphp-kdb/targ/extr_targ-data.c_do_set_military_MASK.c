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
typedef  int /*<<< orphan*/  user_t ;
struct lev_military {int unit_id; int start; int finish; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_TARG_MIL_ADD ; 
 struct lev_military* FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct lev_military*) ; 

int FUNC3 (int user_id, int unit_id, int start, int finish) {
  user_t *U = FUNC1 (user_id);
  if (!U) {
    return 0;
  }

  struct lev_military *E = FUNC0 (LEV_TARG_MIL_ADD, sizeof (struct lev_military), user_id);

  E->unit_id = unit_id;
  E->start = start;
  E->finish = finish;

  FUNC2 (U, E);
  return 1;
}