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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct pt_regs*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 

void FUNC2(struct pt_regs *regs, int ea, int vector)
{
	FUNC1("Unable to handle exception at EA =0x%x, vector 0x%x",
	       ea, vector);
	FUNC0("Oops", regs, 9);
}