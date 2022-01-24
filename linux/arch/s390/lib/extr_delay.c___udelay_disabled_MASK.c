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
typedef  scalar_t__ u64 ;
struct s390_idle_data {int dummy; } ;
struct TYPE_2__ {scalar_t__ clock_comparator; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIF_IGNORE_IRQ ; 
 unsigned long CR0_IRQ_SUBCLASS_MASK ; 
 unsigned long PSW_MASK_EXT ; 
 unsigned long PSW_MASK_WAIT ; 
 TYPE_1__ S390_lowcore ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct s390_idle_data*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(unsigned long long usecs)
{
	unsigned long cr0, cr0_new, psw_mask;
	struct s390_idle_data idle;
	u64 end;

	end = FUNC4() + (usecs << 12);
	FUNC1(cr0, 0, 0);
	cr0_new = cr0 & ~CR0_IRQ_SUBCLASS_MASK;
	cr0_new |= (1UL << (63 - 52)); /* enable clock comparator irq */
	FUNC0(cr0_new, 0, 0);
	psw_mask = FUNC2() | PSW_MASK_EXT | PSW_MASK_WAIT;
	FUNC6(end);
	FUNC7(CIF_IGNORE_IRQ);
	FUNC5(&idle, psw_mask);
	FUNC3(CIF_IGNORE_IRQ);
	FUNC6(S390_lowcore.clock_comparator);
	FUNC0(cr0, 0, 0);
}