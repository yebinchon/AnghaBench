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
typedef  scalar_t__ kprobe_opcode_t ;
typedef  int /*<<< orphan*/  insn_byte_t ;
typedef  int /*<<< orphan*/  insn_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static kprobe_opcode_t *FUNC3(kprobe_opcode_t *insn)
{
	insn_attr_t attr;

	attr = FUNC0((insn_byte_t)*insn);
	while (FUNC1(attr)) {
		insn++;
		attr = FUNC0((insn_byte_t)*insn);
	}
#ifdef CONFIG_X86_64
	if (inat_is_rex_prefix(attr))
		insn++;
#endif
	return insn;
}