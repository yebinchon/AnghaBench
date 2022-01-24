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
struct pt_regs {int msr; scalar_t__ nip; } ;
struct bpt {int /*<<< orphan*/  ref_count; scalar_t__ address; } ;

/* Variables and functions */
 int MSR_64BIT ; 
 int MSR_IR ; 
 int MSR_PR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ catch_memory_errors ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*) ; 
 struct bpt* FUNC2 (scalar_t__,unsigned long*) ; 
 scalar_t__ in_xmon ; 

__attribute__((used)) static int FUNC3(struct pt_regs *regs)
{
	struct bpt *bp;
	unsigned long offset;

	if (in_xmon && catch_memory_errors)
		FUNC1(regs);	/* doesn't return */

	if ((regs->msr & (MSR_IR|MSR_PR|MSR_64BIT)) == (MSR_IR|MSR_64BIT)) {
		bp = FUNC2(regs->nip, &offset);
		if (bp != NULL) {
			regs->nip = bp->address + offset;
			FUNC0(&bp->ref_count);
		}
	}

	return 0;
}