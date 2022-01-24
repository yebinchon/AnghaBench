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
struct jump_entry {int dummy; } ;
struct insn {int opcode; int offset; } ;

/* Variables and functions */
 int FUNC0 (struct jump_entry*) ; 
 int FUNC1 (struct jump_entry*) ; 

__attribute__((used)) static void FUNC2(struct jump_entry *entry, struct insn *insn)
{
	/* brcl 0,offset */
	insn->opcode = 0xc004;
	insn->offset = (FUNC1(entry) - FUNC0(entry)) >> 1;
}