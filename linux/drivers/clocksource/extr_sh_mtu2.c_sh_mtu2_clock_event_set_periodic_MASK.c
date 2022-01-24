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
struct sh_mtu2_channel {int /*<<< orphan*/  index; TYPE_2__* mtu; } ;
struct clock_event_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct sh_mtu2_channel* FUNC0 (struct clock_event_device*) ; 
 scalar_t__ FUNC1 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_mtu2_channel*) ; 
 int /*<<< orphan*/  FUNC4 (struct sh_mtu2_channel*) ; 

__attribute__((used)) static int FUNC5(struct clock_event_device *ced)
{
	struct sh_mtu2_channel *ch = FUNC0(ced);

	if (FUNC1(ced))
		FUNC3(ch);

	FUNC2(&ch->mtu->pdev->dev, "ch%u: used for periodic clock events\n",
		 ch->index);
	FUNC4(ch);
	return 0;
}