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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  A0 ; 
 scalar_t__ cpu_has_64bit_gp_regs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(u32 **buf, int reg, int off)
{
	if (cpu_has_64bit_gp_regs) {
		FUNC0(buf, reg, off, A0);
	} else {
		FUNC1(buf, reg, off, A0);
	}
}