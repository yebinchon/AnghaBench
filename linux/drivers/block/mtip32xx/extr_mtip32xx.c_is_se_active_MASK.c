#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct driver_data {TYPE_1__* port; int /*<<< orphan*/  dd_flag; } ;
struct TYPE_2__ {long ic_pause_timer; int /*<<< orphan*/  svc_wait; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTIP_DDF_SEC_LOCK_BIT ; 
 int /*<<< orphan*/  MTIP_PF_SE_ACTIVE_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC6(struct driver_data *dd)
{
	if (FUNC4(FUNC2(MTIP_PF_SE_ACTIVE_BIT, &dd->port->flags))) {
		if (dd->port->ic_pause_timer) {
			unsigned long to = dd->port->ic_pause_timer +
							FUNC1(1000);
			if (FUNC3(jiffies, to)) {
				FUNC0(MTIP_PF_SE_ACTIVE_BIT,
							&dd->port->flags);
				FUNC0(MTIP_DDF_SEC_LOCK_BIT, &dd->dd_flag);
				dd->port->ic_pause_timer = 0;
				FUNC5(&dd->port->svc_wait);
				return false;
			}
		}
		return true;
	}
	return false;
}