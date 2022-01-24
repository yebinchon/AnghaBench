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
struct pxa3xx_freq_info {int dummy; } ;
struct cpufreq_policy {scalar_t__ cpu; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct pxa3xx_freq_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa3xx_freq_info*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 struct pxa3xx_freq_info* pxa3xx_freqs ; 

__attribute__((used)) static int FUNC4(struct cpufreq_policy *policy, unsigned int index)
{
	struct pxa3xx_freq_info *next;
	unsigned long flags;

	if (policy->cpu != 0)
		return -EINVAL;

	next = &pxa3xx_freqs[index];

	FUNC3(flags);
	FUNC1(next);
	FUNC0(next);
	FUNC2(flags);

	return 0;
}