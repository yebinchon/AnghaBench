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
struct platform_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  cd_info; int /*<<< orphan*/  disk; int /*<<< orphan*/  tag_set; int /*<<< orphan*/  gdrom_rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  GDROM_DEV_NAME ; 
 int /*<<< orphan*/  HW_EVENT_GDROM_CMD ; 
 int /*<<< orphan*/  HW_EVENT_GDROM_DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__ gd ; 
 scalar_t__ gdrom_major ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *devptr)
{
	FUNC0(gd.gdrom_rq);
	FUNC1(&gd.tag_set);
	FUNC3(HW_EVENT_GDROM_CMD, &gd);
	FUNC3(HW_EVENT_GDROM_DMA, &gd);
	FUNC2(gd.disk);
	if (gdrom_major)
		FUNC4(gdrom_major, GDROM_DEV_NAME);
	FUNC5(gd.cd_info);

	return 0;
}