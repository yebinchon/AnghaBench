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
struct cpufreq_freqs {int flags; unsigned int old; unsigned int new; } ;

/* Variables and functions */
 int CPUFREQ_CONST_LOOPS ; 
 unsigned long CPUFREQ_POSTCHANGE ; 
 unsigned long FUNC0 (unsigned long,unsigned int,unsigned int) ; 
 unsigned long loops_per_jiffy ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,unsigned int) ; 

__attribute__((used)) static void FUNC2(unsigned long val, struct cpufreq_freqs *ci)
{
#ifndef CONFIG_SMP
	static unsigned long l_p_j_ref;
	static unsigned int l_p_j_ref_freq;

	if (ci->flags & CPUFREQ_CONST_LOOPS)
		return;

	if (!l_p_j_ref_freq) {
		l_p_j_ref = loops_per_jiffy;
		l_p_j_ref_freq = ci->old;
		FUNC1("saving %lu as reference value for loops_per_jiffy; freq is %u kHz\n",
			 l_p_j_ref, l_p_j_ref_freq);
	}
	if (val == CPUFREQ_POSTCHANGE && ci->old != ci->new) {
		loops_per_jiffy = FUNC0(l_p_j_ref, l_p_j_ref_freq,
								ci->new);
		FUNC1("scaling loops_per_jiffy to %lu for frequency %u kHz\n",
			 loops_per_jiffy, ci->new);
	}
#endif
}