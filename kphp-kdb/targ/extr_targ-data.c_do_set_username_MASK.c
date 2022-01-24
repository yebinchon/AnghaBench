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
struct lev_username {int /*<<< orphan*/  s; } ;

/* Variables and functions */
 scalar_t__ LEV_TARG_USERNAME ; 
 struct lev_username* FUNC0 (scalar_t__,int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC3 (struct lev_username*,int) ; 

int FUNC4 (int user_id, const char *text, int len) {
  if ((unsigned)len >= 256 || FUNC1 (user_id) < 0) {
    return 0;
  }
  struct lev_username *E = FUNC0 (LEV_TARG_USERNAME + len, 9 + len, user_id);
  FUNC2 (E->s, text, len);
  return FUNC3 (E, len);
}