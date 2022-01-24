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
struct lev_search_set_rate {long long obj_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_SEARCH_SET_RATE ; 
 struct lev_search_set_rate* FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (long long) ; 
 int FUNC2 (long long,int) ; 

int FUNC3 (long long item_id, int rate) {
  if (!FUNC1 (item_id)) { return 0; }
  struct lev_search_set_rate *LR = FUNC0 (LEV_SEARCH_SET_RATE, 16, rate);
  LR->obj_id = item_id;
  return FUNC2 (item_id, rate);
}