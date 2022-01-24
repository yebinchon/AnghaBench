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
struct lev_generic {int dummy; } ;

/* Variables and functions */
 scalar_t__ LEV_TARG_USER_HASPHOTO ; 
 struct lev_generic* FUNC0 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct lev_generic*) ; 

int FUNC3 (int user_id, int flags) {
  if ((flags & (-1 << 24)) || !FUNC1 (user_id)) {
    return 0;
  }
  struct lev_generic *E = FUNC0 (LEV_TARG_USER_HASPHOTO + (flags & 0xff), 8, user_id);
  return FUNC2 (E);
}