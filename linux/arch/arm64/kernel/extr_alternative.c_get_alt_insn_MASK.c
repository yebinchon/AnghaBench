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
typedef  int /*<<< orphan*/  u32 ;
struct alt_instr {int dummy; } ;
typedef  unsigned long s32 ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  SZ_4K ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct alt_instr*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC11(struct alt_instr *alt, __le32 *insnptr, __le32 *altinsnptr)
{
	u32 insn;

	insn = FUNC10(*altinsnptr);

	if (FUNC5(insn)) {
		s32 offset = FUNC1(insn);
		unsigned long target;

		target = (unsigned long)altinsnptr + offset;

		/*
		 * If we're branching inside the alternate sequence,
		 * do not rewrite the instruction, as it is already
		 * correct. Otherwise, generate the new instruction.
		 */
		if (FUNC9(alt, target)) {
			offset = target - (unsigned long)insnptr;
			insn = FUNC7(insn, offset);
		}
	} else if (FUNC4(insn)) {
		s32 orig_offset, new_offset;
		unsigned long target;

		/*
		 * If we're replacing an adrp instruction, which uses PC-relative
		 * immediate addressing, adjust the offset to reflect the new
		 * PC. adrp operates on 4K aligned addresses.
		 */
		orig_offset  = FUNC2(insn);
		target = FUNC8(altinsnptr, SZ_4K) + orig_offset;
		new_offset = target - FUNC8(insnptr, SZ_4K);
		insn = FUNC3(insn, new_offset);
	} else if (FUNC6(insn)) {
		/*
		 * Disallow patching unhandled instructions using PC relative
		 * literal addresses
		 */
		FUNC0();
	}

	return insn;
}