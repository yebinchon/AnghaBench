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
struct insn {int name_len; scalar_t__* name; int /*<<< orphan*/ * upper; int /*<<< orphan*/  format; int /*<<< orphan*/  type; int /*<<< orphan*/  opcode; } ;
struct gen_opcode {int nr; struct insn* insn; } ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct insn* FUNC2 (struct insn*,int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char) ; 

__attribute__((used)) static void FUNC6(struct gen_opcode *desc)
{
	struct insn insn;
	int rc, i;

	while (1) {
		rc = FUNC3("%s %s %s", insn.opcode, insn.name, insn.format);
		if (rc == EOF)
			break;
		if (rc != 3)
			FUNC0(EXIT_FAILURE);
		insn.type = FUNC1(insn.format);
		insn.name_len = FUNC4(insn.name);
		for (i = 0; i <= insn.name_len; i++)
			insn.upper[i] = FUNC5((unsigned char)insn.name[i]);
		desc->nr++;
		desc->insn = FUNC2(desc->insn, desc->nr * sizeof(*desc->insn));
		if (!desc->insn)
			FUNC0(EXIT_FAILURE);
		desc->insn[desc->nr - 1] = insn;
	}
}