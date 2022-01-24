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
struct seq_file {int dummy; } ;
struct cpuinfo_x86 {unsigned int cpu_index; char* x86_vendor_id; char* x86_model_id; int x86_stepping; scalar_t__ cpuid_level; int microcode; int x86_cache_size; int loops_per_jiffy; int x86_tlbsize; int x86_clflush_size; int x86_cache_alignment; int x86_power; int /*<<< orphan*/  x86_virt_bits; int /*<<< orphan*/  x86_phys_bits; int /*<<< orphan*/  x86_model; int /*<<< orphan*/  x86; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__**) ; 
 int HZ ; 
 int NBUGINTS ; 
 int NCAPINTS ; 
 int X86_FEATURE_TSC ; 
 unsigned int FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (struct cpuinfo_x86*,int) ; 
 scalar_t__ FUNC3 (struct cpuinfo_x86*,unsigned int) ; 
 unsigned int cpu_khz ; 
 unsigned int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,struct cpuinfo_x86*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*,struct cpuinfo_x86*) ; 
 int* x86_bug_flags ; 
 int /*<<< orphan*/ ** x86_cap_flags ; 
 scalar_t__** x86_power_flags ; 

__attribute__((used)) static int FUNC9(struct seq_file *m, void *v)
{
	struct cpuinfo_x86 *c = v;
	unsigned int cpu;
	int i;

	cpu = c->cpu_index;
	FUNC5(m, "processor\t: %u\n"
		   "vendor_id\t: %s\n"
		   "cpu family\t: %d\n"
		   "model\t\t: %u\n"
		   "model name\t: %s\n",
		   cpu,
		   c->x86_vendor_id[0] ? c->x86_vendor_id : "unknown",
		   c->x86,
		   c->x86_model,
		   c->x86_model_id[0] ? c->x86_model_id : "unknown");

	if (c->x86_stepping || c->cpuid_level >= 0)
		FUNC5(m, "stepping\t: %d\n", c->x86_stepping);
	else
		FUNC6(m, "stepping\t: unknown\n");
	if (c->microcode)
		FUNC5(m, "microcode\t: 0x%x\n", c->microcode);

	if (FUNC2(c, X86_FEATURE_TSC)) {
		unsigned int freq = FUNC1(cpu);

		if (!freq)
			freq = FUNC4(cpu);
		if (!freq)
			freq = cpu_khz;
		FUNC5(m, "cpu MHz\t\t: %u.%03u\n",
			   freq / 1000, (freq % 1000));
	}

	/* Cache size */
	if (c->x86_cache_size)
		FUNC5(m, "cache size\t: %u KB\n", c->x86_cache_size);

	FUNC7(m, c, cpu);
	FUNC8(m, c);

	FUNC6(m, "flags\t\t:");
	for (i = 0; i < 32*NCAPINTS; i++)
		if (FUNC2(c, i) && x86_cap_flags[i] != NULL)
			FUNC5(m, " %s", x86_cap_flags[i]);

	FUNC6(m, "\nbugs\t\t:");
	for (i = 0; i < 32*NBUGINTS; i++) {
		unsigned int bug_bit = 32*NCAPINTS + i;

		if (FUNC3(c, bug_bit) && x86_bug_flags[i])
			FUNC5(m, " %s", x86_bug_flags[i]);
	}

	FUNC5(m, "\nbogomips\t: %lu.%02lu\n",
		   c->loops_per_jiffy/(500000/HZ),
		   (c->loops_per_jiffy/(5000/HZ)) % 100);

#ifdef CONFIG_X86_64
	if (c->x86_tlbsize > 0)
		seq_printf(m, "TLB size\t: %d 4K pages\n", c->x86_tlbsize);
#endif
	FUNC5(m, "clflush size\t: %u\n", c->x86_clflush_size);
	FUNC5(m, "cache_alignment\t: %d\n", c->x86_cache_alignment);
	FUNC5(m, "address sizes\t: %u bits physical, %u bits virtual\n",
		   c->x86_phys_bits, c->x86_virt_bits);

	FUNC6(m, "power management:");
	for (i = 0; i < 32; i++) {
		if (c->x86_power & (1 << i)) {
			if (i < FUNC0(x86_power_flags) &&
			    x86_power_flags[i])
				FUNC5(m, "%s%s",
					   x86_power_flags[i][0] ? " " : "",
					   x86_power_flags[i]);
			else
				FUNC5(m, " [%d]", i);
		}
	}

	FUNC6(m, "\n\n");

	return 0;
}