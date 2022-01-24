#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int dummy; } ;
struct fadump_crash_info_header {int /*<<< orphan*/  online_mask; struct pt_regs regs; int /*<<< orphan*/  crashing_cpu; } ;
struct TYPE_4__ {TYPE_1__* ops; int /*<<< orphan*/  fadumphdr_addr; scalar_t__ dump_registered; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* fadump_trigger ) (struct fadump_crash_info_header*,char const*) ;} ;

/* Variables and functions */
 struct fadump_crash_info_header* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * cpu_online_mask ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  crashing_cpu ; 
 TYPE_2__ fw_dump ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct fadump_crash_info_header*,char const*) ; 

void FUNC8(struct pt_regs *regs, const char *str)
{
	struct fadump_crash_info_header *fdh = NULL;
	int old_cpu, this_cpu;

	if (!FUNC5())
		return;

	/*
	 * old_cpu == -1 means this is the first CPU which has come here,
	 * go ahead and trigger fadump.
	 *
	 * old_cpu != -1 means some other CPU has already on it's way
	 * to trigger fadump, just keep looping here.
	 */
	this_cpu = FUNC6();
	old_cpu = FUNC1(&crashing_cpu, -1, this_cpu);

	if (old_cpu != -1) {
		/*
		 * We can't loop here indefinitely. Wait as long as fadump
		 * is in force. If we race with fadump un-registration this
		 * loop will break and then we go down to normal panic path
		 * and reboot. If fadump is in force the first crashing
		 * cpu will definitely trigger fadump.
		 */
		while (fw_dump.dump_registered)
			FUNC2();
		return;
	}

	fdh = FUNC0(fw_dump.fadumphdr_addr);
	fdh->crashing_cpu = crashing_cpu;
	FUNC3();

	if (regs)
		fdh->regs = *regs;
	else
		FUNC4(&fdh->regs);

	fdh->online_mask = *cpu_online_mask;

	fw_dump.ops->fadump_trigger(fdh, str);
}