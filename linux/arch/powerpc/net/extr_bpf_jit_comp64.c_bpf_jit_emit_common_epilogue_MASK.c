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
struct codegen_context {int seen; scalar_t__ stack_size; } ;

/* Variables and functions */
 scalar_t__ BPF_PPC_STACKFRAME ; 
 int BPF_REG_10 ; 
 int BPF_REG_6 ; 
 int /*<<< orphan*/  FUNC0 (int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PPC_LR_STKOFF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int SEEN_FUNC ; 
 int /*<<< orphan*/ * b2p ; 
 scalar_t__ FUNC3 (struct codegen_context*) ; 
 scalar_t__ FUNC4 (struct codegen_context*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct codegen_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(u32 *image, struct codegen_context *ctx)
{
	int i;

	/* Restore NVRs */
	for (i = BPF_REG_6; i <= BPF_REG_10; i++)
		if (FUNC4(ctx, i))
			FUNC1(b2p[i], 1, FUNC5(ctx, b2p[i]));

	/* Tear down our stack frame */
	if (FUNC3(ctx)) {
		FUNC0(1, 1, BPF_PPC_STACKFRAME + ctx->stack_size);
		if (ctx->seen & SEEN_FUNC) {
			FUNC1(0, 1, PPC_LR_STKOFF);
			FUNC2(0);
		}
	}
}