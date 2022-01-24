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
struct TYPE_2__ {scalar_t__ opcode; int /*<<< orphan*/  target; } ;
union mips_instruction {TYPE_1__ j_format; } ;

/* Variables and functions */
 unsigned long FUNC0 (union mips_instruction*,int /*<<< orphan*/ ) ; 
 scalar_t__ j_op ; 
 scalar_t__ schedule ; 

__attribute__((used)) static unsigned long FUNC1(void)
{
	union mips_instruction *ip = (void *)schedule;
	int max_insns = 8;
	int i;

	for (i = 0; i < max_insns; i++, ip++) {
		if (ip->j_format.opcode == j_op)
			return FUNC0(ip, ip->j_format.target);
	}
	return 0;
}