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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static unsigned long
FUNC2(unsigned long pc, unsigned long addr, bool link)
{
	unsigned long opcode = 0xea000000;
	long offset;

	if (link)
		opcode |= 1 << 24;

	offset = (long)addr - (long)(pc + 8);
	if (FUNC1(offset < -33554432 || offset > 33554428)) {
		FUNC0(1);
		return 0;
	}

	offset = (offset >> 2) & 0x00ffffff;

	return opcode | offset;
}