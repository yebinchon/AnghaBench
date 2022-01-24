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
struct pxa_freqs {int dummy; } ;
struct cpufreq_frequency_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 struct cpufreq_frequency_table* pxa255_run_freq_table ; 
 struct pxa_freqs* pxa255_run_freqs ; 
 struct cpufreq_frequency_table* pxa255_turbo_freq_table ; 
 struct pxa_freqs* pxa255_turbo_freqs ; 
 int /*<<< orphan*/  pxa255_turbo_table ; 
 struct cpufreq_frequency_table* pxa27x_freq_table ; 
 struct pxa_freqs* pxa27x_freqs ; 

__attribute__((used)) static void FUNC3(struct cpufreq_frequency_table **freq_table,
			     const struct pxa_freqs **pxa_freqs)
{
	if (FUNC1()) {
		if (!pxa255_turbo_table) {
			*pxa_freqs = pxa255_run_freqs;
			*freq_table = pxa255_run_freq_table;
		} else {
			*pxa_freqs = pxa255_turbo_freqs;
			*freq_table = pxa255_turbo_freq_table;
		}
	} else if (FUNC2()) {
		*pxa_freqs = pxa27x_freqs;
		*freq_table = pxa27x_freq_table;
	} else {
		FUNC0();
	}
}