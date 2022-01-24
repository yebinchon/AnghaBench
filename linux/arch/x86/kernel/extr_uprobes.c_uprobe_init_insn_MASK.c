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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int nbytes; } ;
struct insn {TYPE_1__ opcode; } ;
struct arch_uprobe {int /*<<< orphan*/  insn; } ;

/* Variables and functions */
 int ENOEXEC ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct insn*) ; 
 int /*<<< orphan*/  FUNC1 (struct insn*) ; 
 scalar_t__ good_2byte_insns ; 
 int* good_insns_32 ; 
 int* good_insns_64 ; 
 int /*<<< orphan*/  FUNC2 (struct insn*) ; 
 int /*<<< orphan*/  FUNC3 (struct insn*) ; 
 int /*<<< orphan*/  FUNC4 (struct insn*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC5 (struct insn*) ; 
 scalar_t__ FUNC6 (struct insn*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int FUNC8(struct arch_uprobe *auprobe, struct insn *insn, bool x86_64)
{
	u32 volatile *good_insns;

	FUNC4(insn, auprobe->insn, sizeof(auprobe->insn), x86_64);
	/* has the side-effect of processing the entire instruction */
	FUNC3(insn);
	if (!FUNC2(insn))
		return -ENOEXEC;

	if (FUNC6(insn))
		return -ENOTSUPP;

	/* We should not singlestep on the exception masking instructions */
	if (FUNC5(insn))
		return -ENOTSUPP;

	if (x86_64)
		good_insns = good_insns_64;
	else
		good_insns = good_insns_32;

	if (FUNC7(FUNC0(insn), (unsigned long *)good_insns))
		return 0;

	if (insn->opcode.nbytes == 2) {
		if (FUNC7(FUNC1(insn), (unsigned long *)good_2byte_insns))
			return 0;
	}

	return -ENOTSUPP;
}