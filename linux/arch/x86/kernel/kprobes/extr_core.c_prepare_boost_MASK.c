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
struct TYPE_2__ {int boostable; scalar_t__ insn; } ;
struct kprobe {int addr; TYPE_1__ ainsn; } ;
struct insn {int length; } ;
typedef  int /*<<< orphan*/  kprobe_opcode_t ;

/* Variables and functions */
 int MAX_INSN_SIZE ; 
 int RELATIVEJUMP_SIZE ; 
 scalar_t__ FUNC0 (struct insn*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static int FUNC2(kprobe_opcode_t *buf, struct kprobe *p,
			  struct insn *insn)
{
	int len = insn->length;

	if (FUNC0(insn, p->addr) &&
	    MAX_INSN_SIZE - len >= RELATIVEJUMP_SIZE) {
		/*
		 * These instructions can be executed directly if it
		 * jumps back to correct address.
		 */
		FUNC1(buf + len, p->ainsn.insn + len,
				   p->addr + insn->length);
		len += RELATIVEJUMP_SIZE;
		p->ainsn.boostable = true;
	} else {
		p->ainsn.boostable = false;
	}

	return len;
}