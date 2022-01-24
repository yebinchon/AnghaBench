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
union mips_instruction {int* halfword; int word; } ;
typedef  int /*<<< orphan*/  ulong ;
struct mips_frame_info {int pc_offset; int /*<<< orphan*/  frame_size; scalar_t__ func; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_CPU_MICROMIPS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (union mips_instruction*) ; 
 scalar_t__ FUNC2 (union mips_instruction*,int*) ; 
 int /*<<< orphan*/  FUNC3 (union mips_instruction*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct mips_frame_info *info)
{
	bool is_mmips = FUNC0(CONFIG_CPU_MICROMIPS);
	union mips_instruction insn, *ip;
	const unsigned int max_insns = 128;
	unsigned int last_insn_size = 0;
	unsigned int i;
	bool saw_jump = false;

	info->pc_offset = -1;
	info->frame_size = 0;

	ip = (void *)FUNC5((ulong)info->func);
	if (!ip)
		goto err;

	for (i = 0; i < max_insns; i++) {
		ip = (void *)ip + last_insn_size;

		if (is_mmips && FUNC4(ip->halfword[0])) {
			insn.word = ip->halfword[0] << 16;
			last_insn_size = 2;
		} else if (is_mmips) {
			insn.word = ip->halfword[0] << 16 | ip->halfword[1];
			last_insn_size = 4;
		} else {
			insn.word = ip->word;
			last_insn_size = 4;
		}

		if (!info->frame_size) {
			FUNC3(&insn, &info->frame_size);
			continue;
		} else if (!saw_jump && FUNC1(ip)) {
			/*
			 * If we see a jump instruction, we are finished
			 * with the frame save.
			 *
			 * Some functions can have a shortcut return at
			 * the beginning of the function, so don't start
			 * looking for jump instruction until we see the
			 * frame setup.
			 *
			 * The RA save instruction can get put into the
			 * delay slot of the jump instruction, so look
			 * at the next instruction, too.
			 */
			saw_jump = true;
			continue;
		}
		if (info->pc_offset == -1 &&
		    FUNC2(&insn, &info->pc_offset))
			break;
		if (saw_jump)
			break;
	}
	if (info->frame_size && info->pc_offset >= 0) /* nested */
		return 0;
	if (info->pc_offset < 0) /* leaf */
		return 1;
	/* prologue seems bogus... */
err:
	return -1;
}