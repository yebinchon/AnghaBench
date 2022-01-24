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
struct branch {int opcode; unsigned long delta; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*) ; 

__attribute__((used)) static unsigned FUNC3(void *insn_buff, const void *target,
				    unsigned long addr, unsigned len)
{
	const int call_len = 5;
	struct branch *b = insn_buff;
	unsigned long delta = (unsigned long)target - (addr+call_len);

	if (len < call_len) {
		FUNC2("paravirt: Failed to patch indirect CALL at %ps\n", (void *)addr);
		/* Kernel might not be viable if patching fails, bail out: */
		FUNC0(1);
	}

	b->opcode = 0xe8; /* call */
	b->delta = delta;
	FUNC1(sizeof(*b) != call_len);

	return call_len;
}