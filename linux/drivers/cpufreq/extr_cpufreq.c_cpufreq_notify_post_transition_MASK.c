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
struct cpufreq_policy {int dummy; } ;
struct cpufreq_freqs {int /*<<< orphan*/  new; int /*<<< orphan*/  old; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_POSTCHANGE ; 
 int /*<<< orphan*/  CPUFREQ_PRECHANGE ; 
 int /*<<< orphan*/  FUNC0 (struct cpufreq_policy*,struct cpufreq_freqs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct cpufreq_policy *policy,
		struct cpufreq_freqs *freqs, int transition_failed)
{
	FUNC0(policy, freqs, CPUFREQ_POSTCHANGE);
	if (!transition_failed)
		return;

	FUNC1(freqs->old, freqs->new);
	FUNC0(policy, freqs, CPUFREQ_PRECHANGE);
	FUNC0(policy, freqs, CPUFREQ_POSTCHANGE);
}