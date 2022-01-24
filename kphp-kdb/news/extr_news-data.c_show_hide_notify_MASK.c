#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* pnext; } ;
typedef  TYPE_1__ userplace_t ;
struct TYPE_6__ {TYPE_1__* first; } ;
typedef  TYPE_2__ notify_place_t ;

/* Variables and functions */
 int /*<<< orphan*/  NOTIFY_MODE ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 scalar_t__ FUNC1 (int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ min_logevent_time ; 
 scalar_t__ now ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

__attribute__((used)) static int FUNC6 (int type, int owner, int place, int item, int shown) {
  FUNC5 (4, "show_hide_notify: type = %d, owner = %d, place = %d, item = %d, shown = %d, time = %lf\n", type, owner, place, item, shown, (double)FUNC3 (0));
  if (now < min_logevent_time) {
    return 0;
  }
  if (!FUNC0 (type, owner, place) || !NOTIFY_MODE || !FUNC4 (type)) {
    return -1;
  }

  notify_place_t *V = (notify_place_t *)FUNC1 (type, owner, place, 0);
  FUNC5 (4, "V = %p, time = %lf\n", V, (double)FUNC3 (0));
  if (!V) {
    return 0;
  }

  userplace_t *up = V->first;
  int res = 0;
  while (up != (userplace_t *)V) {
    res += FUNC2 (up, 0, V, item, shown);
    up = up->pnext;
  }


  return res;
}