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
typedef  int uint32_t ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*,int,int) ; 

__attribute__((used)) static int FUNC2(struct pt_regs *regs, uint32_t rz, uint32_t addr)
{
	uint32_t byte0, byte1;

	if (FUNC0(addr, &byte0))
		return 1;
	addr += 1;
	if (FUNC0(addr, &byte1))
		return 1;

	byte0 |= byte1 << 8;
	FUNC1(regs, rz, byte0);

	return 0;
}