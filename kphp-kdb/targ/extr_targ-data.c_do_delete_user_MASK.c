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
struct lev_delete_user {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_TARG_DELUSER ; 
 struct lev_delete_user* FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct lev_delete_user*) ; 

int FUNC3 (int user_id) {
  if (FUNC1 (user_id) < 0) {
    return 0;
  }
  struct lev_delete_user *E = FUNC0 (LEV_TARG_DELUSER, 8, user_id);
  return FUNC2 (E);
}