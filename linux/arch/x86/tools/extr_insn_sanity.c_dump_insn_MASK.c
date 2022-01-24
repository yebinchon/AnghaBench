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
struct insn {int attr; int opnd_bytes; int addr_bytes; int length; int x86_64; int kaddr; int /*<<< orphan*/  immediate2; int /*<<< orphan*/  immediate1; int /*<<< orphan*/  displacement; int /*<<< orphan*/  sib; int /*<<< orphan*/  modrm; int /*<<< orphan*/  opcode; int /*<<< orphan*/  vex_prefix; int /*<<< orphan*/  rex_prefix; int /*<<< orphan*/  prefixes; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void FUNC2(FILE *fp, struct insn *insn)
{
	FUNC1(fp, "Instruction = {\n");
	FUNC0(fp, "prefixes", "\t",	&insn->prefixes);
	FUNC0(fp, "rex_prefix", "\t",	&insn->rex_prefix);
	FUNC0(fp, "vex_prefix", "\t",	&insn->vex_prefix);
	FUNC0(fp, "opcode", "\t",		&insn->opcode);
	FUNC0(fp, "modrm", "\t",		&insn->modrm);
	FUNC0(fp, "sib", "\t",		&insn->sib);
	FUNC0(fp, "displacement", "\t",	&insn->displacement);
	FUNC0(fp, "immediate1", "\t",	&insn->immediate1);
	FUNC0(fp, "immediate2", "\t",	&insn->immediate2);
	FUNC1(fp, "\t.attr = %x, .opnd_bytes = %d, .addr_bytes = %d,\n",
		insn->attr, insn->opnd_bytes, insn->addr_bytes);
	FUNC1(fp, "\t.length = %d, .x86_64 = %d, .kaddr = %p}\n",
		insn->length, insn->x86_64, insn->kaddr);
}