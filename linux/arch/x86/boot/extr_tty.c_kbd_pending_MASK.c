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
struct biosregs {int ah; int eflags; } ;

/* Variables and functions */
 int X86_EFLAGS_ZF ; 
 int /*<<< orphan*/  FUNC0 (struct biosregs*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct biosregs*,struct biosregs*) ; 

__attribute__((used)) static int FUNC2(void)
{
	struct biosregs ireg, oreg;

	FUNC0(&ireg);
	ireg.ah = 0x01;
	FUNC1(0x16, &ireg, &oreg);

	return !(oreg.eflags & X86_EFLAGS_ZF);
}