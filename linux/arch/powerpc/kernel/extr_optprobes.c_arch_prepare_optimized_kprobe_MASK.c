#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * insn; } ;
struct optimized_kprobe {TYPE_2__ optinsn; } ;
struct TYPE_4__ {int /*<<< orphan*/ * insn; } ;
struct kprobe {TYPE_1__ ainsn; scalar_t__ addr; } ;
typedef  int /*<<< orphan*/  kprobe_opcode_t ;
struct TYPE_6__ {int /*<<< orphan*/  insn_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRANCH_SET_LINK ; 
 int EILSEQ ; 
 int ENOMEM ; 
 int ERANGE ; 
 int /*<<< orphan*/  MAX_OPTINSN_SIZE ; 
 int TMPL_CALL_HDLR_IDX ; 
 int TMPL_EMULATE_IDX ; 
 int TMPL_END_IDX ; 
 int TMPL_INSN_IDX ; 
 int TMPL_OP_IDX ; 
 int TMPL_RET_IDX ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 unsigned long FUNC1 (struct kprobe*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (long) ; 
 TYPE_3__ kprobe_ppc_optinsn_slots ; 
 int /*<<< orphan*/ * optprobe_template_entry ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ *,unsigned long) ; 

int FUNC13(struct optimized_kprobe *op, struct kprobe *p)
{
	kprobe_opcode_t *buff, branch_op_callback, branch_emulate_step;
	kprobe_opcode_t *op_callback_addr, *emulate_step_addr;
	long b_offset;
	unsigned long nip, size;
	int rc, i;

	kprobe_ppc_optinsn_slots.insn_size = MAX_OPTINSN_SIZE;

	nip = FUNC1(p);
	if (!nip)
		return -EILSEQ;

	/* Allocate instruction slot for detour buffer */
	buff = FUNC5();
	if (!buff)
		return -ENOMEM;

	/*
	 * OPTPROBE uses 'b' instruction to branch to optinsn.insn.
	 *
	 * The target address has to be relatively nearby, to permit use
	 * of branch instruction in powerpc, because the address is specified
	 * in an immediate field in the instruction opcode itself, ie 24 bits
	 * in the opcode specify the address. Therefore the address should
	 * be within 32MB on either side of the current instruction.
	 */
	b_offset = (unsigned long)buff - (unsigned long)p->addr;
	if (!FUNC6(b_offset))
		goto error;

	/* Check if the return address is also within 32MB range */
	b_offset = (unsigned long)(buff + TMPL_RET_IDX) -
			(unsigned long)nip;
	if (!FUNC6(b_offset))
		goto error;

	/* Setup template */
	/* We can optimize this via patch_instruction_window later */
	size = (TMPL_END_IDX * sizeof(kprobe_opcode_t)) / sizeof(int);
	FUNC12("Copying template to %p, size %lu\n", buff, size);
	for (i = 0; i < size; i++) {
		rc = FUNC10(buff + i, *(optprobe_template_entry + i));
		if (rc < 0)
			goto error;
	}

	/*
	 * Fixup the template with instructions to:
	 * 1. load the address of the actual probepoint
	 */
	FUNC9((unsigned long)op, buff + TMPL_OP_IDX);

	/*
	 * 2. branch to optimized_callback() and emulate_step()
	 */
	op_callback_addr = (kprobe_opcode_t *)FUNC11("optimized_callback");
	emulate_step_addr = (kprobe_opcode_t *)FUNC11("emulate_step");
	if (!op_callback_addr || !emulate_step_addr) {
		FUNC0(1, "Unable to lookup optimized_callback()/emulate_step()\n");
		goto error;
	}

	branch_op_callback = FUNC2((unsigned int *)buff + TMPL_CALL_HDLR_IDX,
				(unsigned long)op_callback_addr,
				BRANCH_SET_LINK);

	branch_emulate_step = FUNC2((unsigned int *)buff + TMPL_EMULATE_IDX,
				(unsigned long)emulate_step_addr,
				BRANCH_SET_LINK);

	if (!branch_op_callback || !branch_emulate_step)
		goto error;

	FUNC10(buff + TMPL_CALL_HDLR_IDX, branch_op_callback);
	FUNC10(buff + TMPL_EMULATE_IDX, branch_emulate_step);

	/*
	 * 3. load instruction to be emulated into relevant register, and
	 */
	FUNC8(*p->ainsn.insn, buff + TMPL_INSN_IDX);

	/*
	 * 4. branch back from trampoline
	 */
	FUNC7(buff + TMPL_RET_IDX, (unsigned long)nip, 0);

	FUNC3((unsigned long)buff,
			   (unsigned long)(&buff[TMPL_END_IDX]));

	op->optinsn.insn = buff;

	return 0;

error:
	FUNC4(buff, 0);
	return -ERANGE;

}