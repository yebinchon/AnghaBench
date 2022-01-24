#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * platform_data; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  spitz_pm_machinfo ; 
 TYPE_2__* spitzpm_device ; 

__attribute__((used)) static int FUNC6(void)
{
	int ret;

	if (!FUNC2() && !FUNC0()
			&& !FUNC1())
		return -ENODEV;

	spitzpm_device = FUNC4("sharpsl-pm", -1);
	if (!spitzpm_device)
		return -ENOMEM;

	spitzpm_device->dev.platform_data = &spitz_pm_machinfo;
	ret = FUNC3(spitzpm_device);

	if (ret)
		FUNC5(spitzpm_device);

	return ret;
}