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
struct kgdb_bkpt {scalar_t__ bpt_addr; scalar_t__ saved_instr; } ;

/* Variables and functions */
 scalar_t__ AARCH64_BREAK_KGDB_DYN_DBG ; 
 scalar_t__ AARCH64_INSN_SIZE ; 
 scalar_t__ BREAK_INSTR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (void*,int /*<<< orphan*/ *) ; 
 int FUNC2 (void*,int /*<<< orphan*/ ) ; 

int FUNC3(struct kgdb_bkpt *bpt)
{
	int err;

	FUNC0(AARCH64_INSN_SIZE != BREAK_INSTR_SIZE);

	err = FUNC1((void *)bpt->bpt_addr, (u32 *)bpt->saved_instr);
	if (err)
		return err;

	return FUNC2((void *)bpt->bpt_addr,
			(u32)AARCH64_BREAK_KGDB_DYN_DBG);
}