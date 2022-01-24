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
typedef  int /*<<< orphan*/  userplace_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ min_logevent_time ; 
 scalar_t__ now ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,int,int,int,int,double) ; 

__attribute__((used)) static int FUNC4 (int user_id, int type, int owner, int place, int item, int shown) {
  FUNC3 (4, "show_hide_user_notify: type = %d, owner = %d, place = %d, item = %d, shown = %d, time = %lf\n", type, owner, place, item, shown, (double)FUNC2 (0));
  if (now < min_logevent_time) {
    return 0;
  }
  userplace_t *up = FUNC0 (type, owner, place, user_id, 0);
  if (!up) {
    return 0;
  }
  return FUNC1 (up, 0, 0, item, shown);
}