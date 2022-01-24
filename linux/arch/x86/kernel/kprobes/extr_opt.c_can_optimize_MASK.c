#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__* bytes; } ;
struct insn {scalar_t__ length; void* next_byte; void* kaddr; TYPE_1__ opcode; } ;
typedef  int /*<<< orphan*/  kprobe_opcode_t ;

/* Variables and functions */
 scalar_t__ BREAKPOINT_INSTRUCTION ; 
 scalar_t__ INT3_SIZE ; 
 int MAX_INSN_SIZE ; 
 unsigned long RELATIVEJUMP_SIZE ; 
 int /*<<< orphan*/  RELATIVE_ADDR_SIZE ; 
 scalar_t__ __entry_text_end ; 
 scalar_t__ __entry_text_start ; 
 scalar_t__ __irqentry_text_end ; 
 scalar_t__ __irqentry_text_start ; 
 int /*<<< orphan*/  FUNC0 (struct insn*) ; 
 scalar_t__ FUNC1 (struct insn*) ; 
 scalar_t__ FUNC2 (struct insn*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct insn*,void*,int) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (unsigned long) ; 

__attribute__((used)) static int FUNC7(unsigned long paddr)
{
	unsigned long addr, size = 0, offset = 0;
	struct insn insn;
	kprobe_opcode_t buf[MAX_INSN_SIZE];

	/* Lookup symbol including addr */
	if (!FUNC3(paddr, &size, &offset))
		return 0;

	/*
	 * Do not optimize in the entry code due to the unstable
	 * stack handling and registers setup.
	 */
	if (((paddr >= (unsigned long)__entry_text_start) &&
	     (paddr <  (unsigned long)__entry_text_end)) ||
	    ((paddr >= (unsigned long)__irqentry_text_start) &&
	     (paddr <  (unsigned long)__irqentry_text_end)))
		return 0;

	/* Check there is enough space for a relative jump. */
	if (size - offset < RELATIVEJUMP_SIZE)
		return 0;

	/* Decode instructions */
	addr = paddr - offset;
	while (addr < paddr - offset + size) { /* Decode until function end */
		unsigned long recovered_insn;
		if (FUNC6(addr))
			/*
			 * Since some fixup code will jumps into this function,
			 * we can't optimize kprobe in this function.
			 */
			return 0;
		recovered_insn = FUNC5(buf, addr);
		if (!recovered_insn)
			return 0;
		FUNC4(&insn, (void *)recovered_insn, MAX_INSN_SIZE);
		FUNC0(&insn);
		/* Another subsystem puts a breakpoint */
		if (insn.opcode.bytes[0] == BREAKPOINT_INSTRUCTION)
			return 0;
		/* Recover address */
		insn.kaddr = (void *)addr;
		insn.next_byte = (void *)(addr + insn.length);
		/* Check any instructions don't jump into target */
		if (FUNC1(&insn) ||
		    FUNC2(&insn, paddr + INT3_SIZE,
					 RELATIVE_ADDR_SIZE))
			return 0;
		addr += insn.length;
	}

	return 1;
}