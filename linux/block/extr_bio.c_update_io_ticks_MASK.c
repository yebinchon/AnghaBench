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
struct hd_struct {scalar_t__ partno; int /*<<< orphan*/  stamp; } ;
struct TYPE_2__ {struct hd_struct part0; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hd_struct*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  io_ticks ; 
 scalar_t__ FUNC3 (int) ; 
 TYPE_1__* FUNC4 (struct hd_struct*) ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(struct hd_struct *part, unsigned long now)
{
	unsigned long stamp;
again:
	stamp = FUNC0(part->stamp);
	if (FUNC5(stamp != now)) {
		if (FUNC3(FUNC2(&part->stamp, stamp, now) == stamp)) {
			FUNC1(part, io_ticks, 1);
		}
	}
	if (part->partno) {
		part = &FUNC4(part)->part0;
		goto again;
	}
}