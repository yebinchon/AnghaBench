#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct throtl_grp {struct throtl_data* td; } ;
struct throtl_data {scalar_t__ throtl_slice; scalar_t__ low_upgrade_time; } ;
struct TYPE_6__ {TYPE_1__* blkcg; } ;
struct TYPE_5__ {int /*<<< orphan*/  children; } ;
struct TYPE_4__ {TYPE_2__ css; } ;

/* Variables and functions */
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct throtl_grp*) ; 
 TYPE_3__* FUNC2 (struct throtl_grp*) ; 
 int /*<<< orphan*/  FUNC3 (struct throtl_grp*) ; 
 scalar_t__ FUNC4 (unsigned long,scalar_t__) ; 

__attribute__((used)) static bool FUNC5(struct throtl_grp *tg)
{
	struct throtl_data *td = tg->td;
	unsigned long now = jiffies;

	/*
	 * If cgroup is below low limit, consider downgrade and throttle other
	 * cgroups
	 */
	if (FUNC4(now, td->low_upgrade_time + td->throtl_slice) &&
	    FUNC4(now, FUNC1(tg) +
					td->throtl_slice) &&
	    (!FUNC3(tg) ||
	     !FUNC0(&FUNC2(tg)->blkcg->css.children)))
		return true;
	return false;
}