#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int batfull_irq; } ;
struct TYPE_7__ {TYPE_6__* platform_data; } ;
struct TYPE_8__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 TYPE_6__ corgi_pm_machinfo ; 
 TYPE_2__* corgipm_device ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(void)
{
	int ret;

	if (!FUNC0() && !FUNC2()
			&& !FUNC1())
		return -ENODEV;

	corgipm_device = FUNC4("sharpsl-pm", -1);
	if (!corgipm_device)
		return -ENOMEM;

	if (!FUNC0())
	    corgi_pm_machinfo.batfull_irq = 1;

	corgipm_device->dev.platform_data = &corgi_pm_machinfo;
	ret = FUNC3(corgipm_device);

	if (ret)
		FUNC5(corgipm_device);

	return ret;
}