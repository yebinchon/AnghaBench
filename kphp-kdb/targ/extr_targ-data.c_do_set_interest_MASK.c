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
struct lev_interests {int len; int /*<<< orphan*/  text; } ;

/* Variables and functions */
 scalar_t__ LEV_TARG_INTERESTS ; 
 int MAX_INTERESTS ; 
 struct lev_interests* FUNC0 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lev_interests*,int) ; 

int FUNC3 (int user_id, const char *text, int len, int type) {
  if (type < 1 || type > MAX_INTERESTS || (unsigned) len > 65520) {
    return 0;
  }
  struct lev_interests *E = FUNC0 (LEV_TARG_INTERESTS + type, len + 11, user_id);
  E->len = len;
  FUNC1 (E->text, text, len);
  FUNC2 (E, len + 11);
  return 1;
}