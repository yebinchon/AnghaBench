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
struct skd_device {char const* skcomp_ix; struct skd_device* skcomp_cycle; TYPE_1__* pdev; int /*<<< orphan*/  queue_low_water_mark; int /*<<< orphan*/  dev_max_queue_depth; int /*<<< orphan*/  cur_max_queue_depth; int /*<<< orphan*/  state; int /*<<< orphan*/  drive_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct skd_device*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct skd_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct skd_device *skdev, const char *event)
{
	FUNC0(&skdev->pdev->dev, "skdev=%p event='%s'\n", skdev, event);
	FUNC0(&skdev->pdev->dev, "  drive_state=%s(%d) driver_state=%s(%d)\n",
		FUNC1(skdev->drive_state), skdev->drive_state,
		FUNC3(skdev->state), skdev->state);
	FUNC0(&skdev->pdev->dev, "  busy=%d limit=%d dev=%d lowat=%d\n",
		FUNC2(skdev), skdev->cur_max_queue_depth,
		skdev->dev_max_queue_depth, skdev->queue_low_water_mark);
	FUNC0(&skdev->pdev->dev, "  cycle=%d cycle_ix=%d\n",
		skdev->skcomp_cycle, skdev->skcomp_ix);
}