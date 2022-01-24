#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct throtl_grp {unsigned long last_check_time; TYPE_1__* td; } ;
struct TYPE_3__ {scalar_t__ limit_index; scalar_t__ throtl_slice; } ;

/* Variables and functions */
 scalar_t__ LIMIT_LOW ; 
 scalar_t__ FUNC0 (struct throtl_grp*) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct throtl_grp *tg)
{
	unsigned long now = jiffies;

	if (tg->td->limit_index != LIMIT_LOW)
		return;

	if (FUNC3(tg->last_check_time + tg->td->throtl_slice, now))
		return;

	tg->last_check_time = now;

	if (!FUNC4(now,
	     FUNC0(tg) + tg->td->throtl_slice))
		return;

	if (FUNC1(tg->td, NULL))
		FUNC2(tg->td);
}