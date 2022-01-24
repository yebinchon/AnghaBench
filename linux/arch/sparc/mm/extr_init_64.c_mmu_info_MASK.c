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

/* Variables and functions */
 int FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ cheetah ; 
 scalar_t__ cheetah_plus ; 
 unsigned long cpu_pgsz_mask ; 
 int /*<<< orphan*/  dcpage_flushes ; 
 int /*<<< orphan*/  dcpage_flushes_xcall ; 
 scalar_t__ hypervisor ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char) ; 
 scalar_t__ spitfire ; 
 scalar_t__ tlb_type ; 

void FUNC4(struct seq_file *m)
{
	static const char *pgsz_strings[] = {
		"8K", "64K", "512K", "4MB", "32MB",
		"256MB", "2GB", "16GB",
	};
	int i, printed;

	if (tlb_type == cheetah)
		FUNC2(m, "MMU Type\t: Cheetah\n");
	else if (tlb_type == cheetah_plus)
		FUNC2(m, "MMU Type\t: Cheetah+\n");
	else if (tlb_type == spitfire)
		FUNC2(m, "MMU Type\t: Spitfire\n");
	else if (tlb_type == hypervisor)
		FUNC2(m, "MMU Type\t: Hypervisor (sun4v)\n");
	else
		FUNC2(m, "MMU Type\t: ???\n");

	FUNC2(m, "MMU PGSZs\t: ");
	printed = 0;
	for (i = 0; i < FUNC0(pgsz_strings); i++) {
		if (cpu_pgsz_mask & (1UL << i)) {
			FUNC2(m, "%s%s",
				   printed ? "," : "", pgsz_strings[i]);
			printed++;
		}
	}
	FUNC3(m, '\n');

#ifdef CONFIG_DEBUG_DCFLUSH
	seq_printf(m, "DCPageFlushes\t: %d\n",
		   atomic_read(&dcpage_flushes));
#ifdef CONFIG_SMP
	seq_printf(m, "DCPageFlushesXC\t: %d\n",
		   atomic_read(&dcpage_flushes_xcall));
#endif /* CONFIG_SMP */
#endif /* CONFIG_DEBUG_DCFLUSH */
}