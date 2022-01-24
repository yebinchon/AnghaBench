#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  parent_sq; } ;
struct throtl_grp {TYPE_1__ service_queue; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 struct throtl_grp* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct throtl_grp*) ; 
 int /*<<< orphan*/  FUNC2 (struct throtl_grp*) ; 

__attribute__((used)) static bool FUNC3(struct throtl_grp *tg)
{
	while (true) {
		if (!FUNC2(tg))
			return false;
		tg = FUNC0(tg->service_queue.parent_sq);
		if (!tg || !FUNC1(tg)->parent)
			break;
	}
	return true;
}