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
struct s390_idle_data {unsigned long long clock_idle_exit; unsigned long long clock_idle_enter; unsigned long long idle_time; int /*<<< orphan*/  seqcount; int /*<<< orphan*/  idle_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIF_NOHZ_DELAY ; 
 unsigned long PSW_KERNEL_BITS ; 
 unsigned long PSW_MASK_DAT ; 
 unsigned long PSW_MASK_EXT ; 
 unsigned long PSW_MASK_IO ; 
 unsigned long PSW_MASK_MCHECK ; 
 unsigned long PSW_MASK_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (struct s390_idle_data*,unsigned long) ; 
 int /*<<< orphan*/  s390_idle ; 
 struct s390_idle_data* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(void)
{
	struct s390_idle_data *idle = FUNC4(&s390_idle);
	unsigned long long idle_time;
	unsigned long psw_mask;

	FUNC6();

	/* Wait for external, I/O or machine check interrupt. */
	psw_mask = PSW_KERNEL_BITS | PSW_MASK_WAIT | PSW_MASK_DAT |
		PSW_MASK_IO | PSW_MASK_EXT | PSW_MASK_MCHECK;
	FUNC1(CIF_NOHZ_DELAY);

	/* Call the assembler magic in entry.S */
	FUNC3(idle, psw_mask);

	FUNC5();

	/* Account time spent with enabled wait psw loaded as idle time. */
	FUNC7(&idle->seqcount);
	idle_time = idle->clock_idle_exit - idle->clock_idle_enter;
	idle->clock_idle_enter = idle->clock_idle_exit = 0ULL;
	idle->idle_time += idle_time;
	idle->idle_count++;
	FUNC0(FUNC2(idle_time));
	FUNC8(&idle->seqcount);
}