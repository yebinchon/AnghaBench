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
typedef  int /*<<< orphan*/  vm_t ;
struct src_insn {struct src_insn* next; } ;
struct func_info {struct src_insn* first; int /*<<< orphan*/ * cached_const; int /*<<< orphan*/  stack_space; scalar_t__ insn_index; int /*<<< orphan*/  fpr_pos; int /*<<< orphan*/  gpr_pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  F0 ; 
 int /*<<< orphan*/  L0 ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct func_info* const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct func_info* const,struct src_insn*) ; 
 int /*<<< orphan*/  FUNC3 (struct func_info* const) ; 

__attribute__((used)) static void FUNC4(vm_t *vm, struct func_info * const fp)
{
	struct src_insn *sp;

	FUNC1(fp);

	fp->gpr_pos = L0;
	fp->fpr_pos = F0;
	fp->insn_index = 0;

	fp->stack_space = FUNC0(64, 128);
	fp->cached_const = NULL;

	sp = fp->first;
	while ((sp = sp->next) != NULL)
		FUNC2(vm, fp, sp);

	FUNC3(fp);
}