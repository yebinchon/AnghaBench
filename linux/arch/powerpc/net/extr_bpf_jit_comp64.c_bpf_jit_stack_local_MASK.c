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
 int BPF_PPC_STACK_SAVE ; 
 int STACK_FRAME_MIN_SIZE ; 
 scalar_t__ FUNC0 (struct codegen_context*) ; 

__attribute__((used)) static int FUNC1(struct codegen_context *ctx)
{
	if (FUNC0(ctx))
		return STACK_FRAME_MIN_SIZE + ctx->stack_size;
	else
		return -(BPF_PPC_STACK_SAVE + 16);
}