#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  sw; } ;

/* Variables and functions */
 int /*<<< orphan*/  SW_LID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  lid_open ; 
 TYPE_1__* lid_switch_idev ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	if (!!FUNC3(SW_LID, lid_switch_idev->sw) == !lid_open)
		return; /* Nothing new to report. */

	FUNC0(lid_switch_idev, SW_LID, !lid_open);
	FUNC1(lid_switch_idev);
	FUNC2(&lid_switch_idev->dev, 0);
}