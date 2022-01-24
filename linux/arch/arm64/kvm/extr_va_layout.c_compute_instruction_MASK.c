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

/* Variables and functions */
 int /*<<< orphan*/  AARCH64_BREAK_FAULT ; 
 int /*<<< orphan*/  AARCH64_INSN_ADSB_ADD ; 
 int /*<<< orphan*/  AARCH64_INSN_LOGIC_AND ; 
 int /*<<< orphan*/  AARCH64_INSN_VARIANT_64BIT ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tag_lsb ; 
 int tag_val ; 
 int /*<<< orphan*/  va_mask ; 

__attribute__((used)) static u32 FUNC4(int n, u32 rd, u32 rn)
{
	u32 insn = AARCH64_BREAK_FAULT;

	switch (n) {
	case 0:
		insn = FUNC3(AARCH64_INSN_LOGIC_AND,
							  AARCH64_INSN_VARIANT_64BIT,
							  rn, rd, va_mask);
		break;

	case 1:
		/* ROR is a variant of EXTR with Rm = Rn */
		insn = FUNC2(AARCH64_INSN_VARIANT_64BIT,
					     rn, rn, rd,
					     tag_lsb);
		break;

	case 2:
		insn = FUNC1(rd, rn,
						    tag_val & FUNC0(11, 0),
						    AARCH64_INSN_VARIANT_64BIT,
						    AARCH64_INSN_ADSB_ADD);
		break;

	case 3:
		insn = FUNC1(rd, rn,
						    tag_val & FUNC0(23, 12),
						    AARCH64_INSN_VARIANT_64BIT,
						    AARCH64_INSN_ADSB_ADD);
		break;

	case 4:
		/* ROR is a variant of EXTR with Rm = Rn */
		insn = FUNC2(AARCH64_INSN_VARIANT_64BIT,
					     rn, rn, rd, 64 - tag_lsb);
		break;
	}

	return insn;
}