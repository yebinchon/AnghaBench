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
struct pt_regs {int dsisr; } ;

/* Variables and functions */
 long FUNC0 (struct pt_regs*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mce_p7_derror_table ; 
 int /*<<< orphan*/  mce_p7_ierror_table ; 

long FUNC1(struct pt_regs *regs)
{
	/* P7 DD1 leaves top bits of DSISR undefined */
	regs->dsisr &= 0x0000ffff;

	return FUNC0(regs, mce_p7_derror_table, mce_p7_ierror_table);
}