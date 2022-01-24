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
typedef  int u8 ;
struct jit_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int const,int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int const,int const) ; 
 int /*<<< orphan*/  FUNC2 (int const,int const) ; 
 int /*<<< orphan*/  ARM_COND_EQ ; 
 int /*<<< orphan*/  ARM_IP ; 
 int /*<<< orphan*/  ARM_LR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int const,int const) ; 
#define  BPF_JEQ 138 
#define  BPF_JGE 137 
#define  BPF_JGT 136 
#define  BPF_JLE 135 
#define  BPF_JLT 134 
#define  BPF_JNE 133 
#define  BPF_JSET 132 
#define  BPF_JSGE 131 
#define  BPF_JSGT 130 
#define  BPF_JSLE 129 
#define  BPF_JSLT 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct jit_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct jit_ctx*) ; 

__attribute__((used)) static inline void FUNC7(const u8 rd, const u8 rt, const u8 rm,
			     const u8 rn, struct jit_ctx *ctx, u8 op,
			     bool is_jmp64) {
	switch (op) {
	case BPF_JSET:
		if (is_jmp64) {
			FUNC6(FUNC1(ARM_IP, rt, rn), ctx);
			FUNC6(FUNC1(ARM_LR, rd, rm), ctx);
			FUNC6(FUNC3(ARM_IP, ARM_LR, ARM_IP), ctx);
		} else {
			FUNC6(FUNC0(ARM_IP, rt, rn), ctx);
		}
		break;
	case BPF_JEQ:
	case BPF_JNE:
	case BPF_JGT:
	case BPF_JGE:
	case BPF_JLE:
	case BPF_JLT:
		if (is_jmp64) {
			FUNC6(FUNC2(rd, rm), ctx);
			/* Only compare low halve if high halve are equal. */
			FUNC5(ARM_COND_EQ, FUNC2(rt, rn), ctx);
		} else {
			FUNC6(FUNC2(rt, rn), ctx);
		}
		break;
	case BPF_JSLE:
	case BPF_JSGT:
		FUNC6(FUNC2(rn, rt), ctx);
		if (is_jmp64)
			FUNC6(FUNC4(ARM_IP, rm, rd), ctx);
		break;
	case BPF_JSLT:
	case BPF_JSGE:
		FUNC6(FUNC2(rt, rn), ctx);
		if (is_jmp64)
			FUNC6(FUNC4(ARM_IP, rd, rm), ctx);
		break;
	}
}