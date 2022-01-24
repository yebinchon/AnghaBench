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
struct cpufreq_policy {unsigned int max; unsigned int min; int /*<<< orphan*/  cpu; } ;
struct cpufreq_freqs {unsigned int old; unsigned int new; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct cpufreq_policy*,struct cpufreq_freqs*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_policy*,struct cpufreq_freqs*,int /*<<< orphan*/ ) ; 
 int fid ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct cpufreq_policy *policy,
			  unsigned int target_freq, unsigned int relation)
{
/*        unsigned long         flags; */
	struct cpufreq_freqs freqs;
	unsigned int target_fsb;

	if ((target_freq > policy->max) || (target_freq < policy->min))
		return -EINVAL;

	target_fsb = target_freq / (fid * 100);

	freqs.old = FUNC2(policy->cpu);
	freqs.new = target_fsb * fid * 100;

	if (freqs.old == freqs.new)
		return 0;

	FUNC4("Old CPU frequency %d kHz, new %d kHz\n",
	       freqs.old, freqs.new);

	FUNC0(policy, &freqs);

	/* Disable IRQs */
	/* local_irq_save(flags); */

	if (FUNC3(target_fsb) < 0)
		FUNC5("Changing FSB to %d failed\n", target_fsb);
	else
		FUNC4("Changed FSB successfully to %d\n",
			target_fsb);

	/* Enable IRQs */
	/* local_irq_restore(flags); */

	FUNC1(policy, &freqs, 0);

	return 0;
}