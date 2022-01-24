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
struct prefix_bits {int dummy; } ;
typedef  enum reason_type { ____Placeholder_reason_type } reason_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IMM_WRITE ; 
 int OTHERS ; 
 int /*<<< orphan*/  REG_READ ; 
 int /*<<< orphan*/  REG_WRITE ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned int*) ; 
 int /*<<< orphan*/  imm_wop ; 
 int /*<<< orphan*/  reg_rop ; 
 int /*<<< orphan*/  reg_wop ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,struct prefix_bits*) ; 

enum reason_type FUNC3(unsigned long ins_addr)
{
	unsigned int opcode;
	unsigned char *p;
	struct prefix_bits prf;
	int i;
	enum reason_type rv = OTHERS;

	p = (unsigned char *)ins_addr;
	p += FUNC2(p, &prf);
	p += FUNC1(p, &opcode);

	FUNC0(opcode, reg_rop, REG_READ);
	FUNC0(opcode, reg_wop, REG_WRITE);
	FUNC0(opcode, imm_wop, IMM_WRITE);

exit:
	return rv;
}