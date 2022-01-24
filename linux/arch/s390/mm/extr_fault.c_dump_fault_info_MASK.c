#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int int_parm_long; } ;
struct gmap {unsigned long asce; } ;
struct TYPE_2__ {unsigned long user_asce; unsigned long vdso_asce; unsigned long kernel_asce; scalar_t__ gmap; } ;

/* Variables and functions */
#define  GMAP_FAULT 131 
#define  KERNEL_FAULT 130 
 TYPE_1__ S390_lowcore ; 
#define  USER_FAULT 129 
#define  VDSO_FAULT 128 
 int __FAIL_ADDR_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int) ; 
 int FUNC1 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct pt_regs *regs)
{
	unsigned long asce;

	FUNC2("Failing address: %016lx TEID: %016lx\n",
		 regs->int_parm_long & __FAIL_ADDR_MASK, regs->int_parm_long);
	FUNC2("Fault in ");
	switch (regs->int_parm_long & 3) {
	case 3:
		FUNC3("home space ");
		break;
	case 2:
		FUNC3("secondary space ");
		break;
	case 1:
		FUNC3("access register ");
		break;
	case 0:
		FUNC3("primary space ");
		break;
	}
	FUNC3("mode while using ");
	switch (FUNC1(regs)) {
	case USER_FAULT:
		asce = S390_lowcore.user_asce;
		FUNC3("user ");
		break;
	case VDSO_FAULT:
		asce = S390_lowcore.vdso_asce;
		FUNC3("vdso ");
		break;
	case GMAP_FAULT:
		asce = ((struct gmap *) S390_lowcore.gmap)->asce;
		FUNC3("gmap ");
		break;
	case KERNEL_FAULT:
		asce = S390_lowcore.kernel_asce;
		FUNC3("kernel ");
		break;
	default:
		FUNC4();
	}
	FUNC3("ASCE.\n");
	FUNC0(asce, regs->int_parm_long & __FAIL_ADDR_MASK);
}