#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_7__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_5__* run; TYPE_2__ arch; } ;
typedef  scalar_t__ s64 ;
typedef  scalar_t__ s32 ;
struct TYPE_8__ {unsigned long* gprs; } ;
struct TYPE_9__ {TYPE_3__ regs; } ;
struct TYPE_10__ {TYPE_4__ s; } ;
struct TYPE_6__ {scalar_t__ icptcode; unsigned long peraddr; int icptstatus; int /*<<< orphan*/  gpsw; } ;

/* Variables and functions */
 scalar_t__ ICPT_PROGI ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 unsigned long FUNC2 (struct kvm_vcpu*,unsigned long) ; 
 int FUNC3 (struct kvm_vcpu*,unsigned long,int**,int) ; 

__attribute__((used)) static int FUNC4(struct kvm_vcpu *vcpu, unsigned long *addr)
{
	u8 exec_ilen = 0;
	u16 opcode[3];
	int rc;

	if (vcpu->arch.sie_block->icptcode == ICPT_PROGI) {
		/* PER address references the fetched or the execute instr */
		*addr = vcpu->arch.sie_block->peraddr;
		/*
		 * Manually detect if we have an EXECUTE instruction. As
		 * instructions are always 2 byte aligned we can read the
		 * first two bytes unconditionally
		 */
		rc = FUNC3(vcpu, *addr, &opcode, 2);
		if (rc)
			return rc;
		if (opcode[0] >> 8 == 0x44)
			exec_ilen = 4;
		if ((opcode[0] & 0xff0f) == 0xc600)
			exec_ilen = 6;
	} else {
		/* instr was suppressed, calculate the responsible instr */
		*addr = FUNC0(vcpu->arch.sie_block->gpsw,
				     FUNC1(vcpu));
		if (vcpu->arch.sie_block->icptstatus & 0x01) {
			exec_ilen = (vcpu->arch.sie_block->icptstatus & 0x60) >> 4;
			if (!exec_ilen)
				exec_ilen = 4;
		}
	}

	if (exec_ilen) {
		/* read the complete EXECUTE instr to detect the fetched addr */
		rc = FUNC3(vcpu, *addr, &opcode, exec_ilen);
		if (rc)
			return rc;
		if (exec_ilen == 6) {
			/* EXECUTE RELATIVE LONG - RIL-b format */
			s32 rl = *((s32 *) (opcode + 1));

			/* rl is a _signed_ 32 bit value specifying halfwords */
			*addr += (u64)(s64) rl * 2;
		} else {
			/* EXECUTE - RX-a format */
			u32 base = (opcode[1] & 0xf000) >> 12;
			u32 disp = opcode[1] & 0x0fff;
			u32 index = opcode[0] & 0x000f;

			*addr = base ? vcpu->run->s.regs.gprs[base] : 0;
			*addr += index ? vcpu->run->s.regs.gprs[index] : 0;
			*addr += disp;
		}
		*addr = FUNC2(vcpu, *addr);
	}
	return 0;
}