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
typedef  union mips_instruction {int dummy; } mips_instruction ;

/* Variables and functions */
 int FUNC0 (union mips_instruction const) ; 

__attribute__((used)) static inline int FUNC1(const union mips_instruction insn)
{
	return FUNC0(insn);
}