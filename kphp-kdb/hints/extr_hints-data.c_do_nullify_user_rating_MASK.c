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
struct lev_hints_nullify_user_rating {int user_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_HINTS_NULLIFY_USER_RATING ; 
 struct lev_hints_nullify_user_rating* FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct lev_hints_nullify_user_rating*) ; 

int FUNC2 (int user_id) {
  struct lev_hints_nullify_user_rating *E =
    FUNC0 (LEV_HINTS_NULLIFY_USER_RATING, sizeof (struct lev_hints_nullify_user_rating), user_id);

  E->user_id = user_id;

  return FUNC1 (E);
}