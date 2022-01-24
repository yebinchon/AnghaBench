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
struct sh_tmu_channel {int /*<<< orphan*/  index; TYPE_2__* tmu; } ;
struct clock_event_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct sh_tmu_channel* FUNC0 (struct clock_event_device*) ; 
 scalar_t__ FUNC1 (struct clock_event_device*) ; 
 scalar_t__ FUNC2 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sh_tmu_channel*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sh_tmu_channel*) ; 

__attribute__((used)) static int FUNC6(struct clock_event_device *ced,
					int periodic)
{
	struct sh_tmu_channel *ch = FUNC0(ced);

	/* deal with old setting first */
	if (FUNC1(ced) || FUNC2(ced))
		FUNC5(ch);

	FUNC3(&ch->tmu->pdev->dev, "ch%u: used for %s clock events\n",
		 ch->index, periodic ? "periodic" : "oneshot");
	FUNC4(ch, periodic);
	return 0;
}