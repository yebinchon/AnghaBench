#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_TRANSITION_NOTIFIER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ls1x_cpufreq_driver ; 
 int /*<<< orphan*/  ls1x_cpufreq_notifier_block ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	FUNC1(&ls1x_cpufreq_notifier_block,
				    CPUFREQ_TRANSITION_NOTIFIER);
	FUNC0(&ls1x_cpufreq_driver);

	return 0;
}