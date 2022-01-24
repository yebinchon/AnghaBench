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
typedef  int /*<<< orphan*/  u8 ;
struct jit_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
#define  BPF_ADD 136 
#define  BPF_AND 135 
#define  BPF_ARSH 134 
#define  BPF_LSH 133 
#define  BPF_MUL 132 
 int FUNC7 (int /*<<< orphan*/  const) ; 
#define  BPF_OR 131 
#define  BPF_RSH 130 
#define  BPF_SUB 129 
#define  BPF_XOR 128 
 int /*<<< orphan*/  SRTYPE_ASR ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct jit_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int const,int const,struct jit_ctx*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int const,int const,struct jit_ctx*) ; 

__attribute__((used)) static inline void FUNC11(const u8 dst, const u8 src, const bool is64,
			      const bool hi, const u8 op, struct jit_ctx *ctx){
	switch (FUNC7(op)) {
	/* dst = dst + src */
	case BPF_ADD:
		FUNC9(dst, src, is64, hi, ctx);
		break;
	/* dst = dst - src */
	case BPF_SUB:
		FUNC10(dst, src, is64, hi, ctx);
		break;
	/* dst = dst | src */
	case BPF_OR:
		FUNC8(FUNC6(dst, dst, src), ctx);
		break;
	/* dst = dst & src */
	case BPF_AND:
		FUNC8(FUNC0(dst, dst, src), ctx);
		break;
	/* dst = dst ^ src */
	case BPF_XOR:
		FUNC8(FUNC1(dst, dst, src), ctx);
		break;
	/* dst = dst * src */
	case BPF_MUL:
		FUNC8(FUNC5(dst, dst, src), ctx);
		break;
	/* dst = dst << src */
	case BPF_LSH:
		FUNC8(FUNC2(dst, dst, src), ctx);
		break;
	/* dst = dst >> src */
	case BPF_RSH:
		FUNC8(FUNC3(dst, dst, src), ctx);
		break;
	/* dst = dst >> src (signed)*/
	case BPF_ARSH:
		FUNC8(FUNC4(dst, dst, SRTYPE_ASR, src), ctx);
		break;
	}
}