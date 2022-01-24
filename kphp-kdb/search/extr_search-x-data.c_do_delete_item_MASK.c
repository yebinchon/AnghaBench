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
struct lev_search_delete_item {long long obj_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_SEARCH_DELETE_ITEM ; 
 struct lev_search_delete_item* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lev_search_delete_item*) ; 
 int FUNC2 (long long) ; 
 int /*<<< orphan*/  FUNC3 (long long) ; 

int FUNC4 (long long item_id) {
  if (!FUNC3 (item_id)) { return 0; }
  struct lev_search_delete_item *ED = FUNC0(LEV_SEARCH_DELETE_ITEM, 12, 0);
  FUNC1 (ED);
  ED->obj_id = item_id;
  return FUNC2 (item_id);
}