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
typedef  int u64 ;

/* Variables and functions */
 int /*<<< orphan*/  MT_DIAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int jiffies_64 ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 
 int /*<<< orphan*/  mt_cycles ; 
 int /*<<< orphan*/  mt_scaling_div ; 
 int /*<<< orphan*/  mt_scaling_jiffies ; 
 int /*<<< orphan*/  mt_scaling_mult ; 
 int smp_cpu_mtid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int*) ; 
 int* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	u64 cycles_new[8], *cycles_old;
	u64 delta, fac, mult, div;
	int i;

	FUNC2(MT_DIAG, smp_cpu_mtid + 1, cycles_new);
	cycles_old = FUNC3(mt_cycles);
	fac = 1;
	mult = div = 0;
	for (i = 0; i <= smp_cpu_mtid; i++) {
		delta = cycles_new[i] - cycles_old[i];
		div += delta;
		mult *= i + 1;
		mult += delta * fac;
		fac *= i + 1;
	}
	div *= fac;
	if (div > 0) {
		/* Update scaling factor */
		FUNC0(mt_scaling_mult, mult);
		FUNC0(mt_scaling_div, div);
		FUNC1(cycles_old, cycles_new,
		       sizeof(u64) * (smp_cpu_mtid + 1));
	}
	FUNC0(mt_scaling_jiffies, jiffies_64);
}