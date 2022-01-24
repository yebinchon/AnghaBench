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
struct lev_ratecute {int rate; int cute; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_TARG_RATECUTE ; 
 struct lev_ratecute* FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct lev_ratecute*) ; 

int FUNC3 (int user_id, int rate, int cute) {
  if (!FUNC1 (user_id)) { return 0; }
  struct lev_ratecute *E = FUNC0 (LEV_TARG_RATECUTE, 16, user_id);
  E->rate = rate;
  E->cute = cute;
  FUNC2 (E);
  return 1;
}