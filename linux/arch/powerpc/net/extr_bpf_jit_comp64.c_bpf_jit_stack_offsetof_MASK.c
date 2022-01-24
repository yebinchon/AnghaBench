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
struct codegen_context {int stack_size; } ;

/* Variables and functions */
 int BPF_PPC_NVR_MIN ; 
 int BPF_PPC_STACKFRAME ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct codegen_context*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct codegen_context *ctx, int reg)
{
	if (reg >= BPF_PPC_NVR_MIN && reg < 32)
		return (FUNC1(ctx) ?
			(BPF_PPC_STACKFRAME + ctx->stack_size) : 0)
				- (8 * (32 - reg));

	FUNC2("BPF JIT is asking about unknown registers");
	FUNC0();
}