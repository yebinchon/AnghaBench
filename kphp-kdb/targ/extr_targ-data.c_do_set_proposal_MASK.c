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
struct lev_proposal {int len; int /*<<< orphan*/  text; int /*<<< orphan*/  user_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_TARG_PROPOSAL ; 
 struct lev_proposal* FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC5 (int user_id, const char *text, int len) {
  if (len < 0 || len >= 1024 || FUNC1 (user_id) < 0) {
    return 0;
  }
  struct lev_proposal *E = FUNC0 (LEV_TARG_PROPOSAL, 11+len, user_id);

  E->len = len;
  FUNC2 (E->text, text, len);

  user_t *U = FUNC3 (E->user_id);

  if (U) {
    return FUNC4 (U, E->text, len);
  } else {
    return 0;
  }
}