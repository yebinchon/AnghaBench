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
struct bpf_jit {int dummy; } ;

/* Variables and functions */
 int REGS_SAVE ; 
 int FUNC0 (struct bpf_jit*,int) ; 
 int FUNC1 (struct bpf_jit*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_jit*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_jit*,int,int) ; 

__attribute__((used)) static void FUNC4(struct bpf_jit *jit, int op, u32 stack_depth)
{

	int re = 6, rs;

	do {
		rs = FUNC1(jit, re);
		if (!rs)
			break;
		re = FUNC0(jit, rs + 1);
		if (op == REGS_SAVE)
			FUNC3(jit, rs, re);
		else
			FUNC2(jit, rs, re, stack_depth);
		re++;
	} while (re <= 15);
}