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
struct jit_ctx {int stack_size; int flags; struct bpf_prog* skf; } ;
struct bpf_prog {int /*<<< orphan*/  len; } ;
typedef  enum reg_val_type { ____Placeholder_reg_val_type } reg_val_type ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_REG_0 ; 
 int EBPF_SAVE_RA ; 
 int EBPF_SAVE_S0 ; 
 int EBPF_SAVE_S1 ; 
 int EBPF_SAVE_S2 ; 
 int EBPF_SAVE_S3 ; 
 int EBPF_SAVE_S4 ; 
 int MIPS_R_RA ; 
 int MIPS_R_S0 ; 
 int MIPS_R_S1 ; 
 int MIPS_R_S2 ; 
 int MIPS_R_S3 ; 
 int MIPS_R_S4 ; 
 int MIPS_R_SP ; 
 int MIPS_R_V0 ; 
 int REG_64BIT ; 
 int /*<<< orphan*/  addiu ; 
 int /*<<< orphan*/  daddiu ; 
 int /*<<< orphan*/  FUNC0 (struct jit_ctx*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct jit_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC2 (struct jit_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jr ; 
 int /*<<< orphan*/  ld ; 
 int /*<<< orphan*/  lw ; 
 int /*<<< orphan*/  nop ; 
 int /*<<< orphan*/  sll ; 

__attribute__((used)) static int FUNC3(struct jit_ctx *ctx, int dest_reg)
{
	const struct bpf_prog *prog = ctx->skf;
	int stack_adjust = ctx->stack_size;
	int store_offset = stack_adjust - sizeof(long);
	enum reg_val_type td;
	int r0 = MIPS_R_V0;

	if (dest_reg == MIPS_R_RA) {
		/* Don't let zero extended value escape. */
		td = FUNC2(ctx, prog->len, BPF_REG_0);
		if (td == REG_64BIT)
			FUNC0(ctx, sll, r0, r0, 0);
	}

	if (ctx->flags & EBPF_SAVE_RA) {
		FUNC1(ctx, ld, lw,
					MIPS_R_RA, store_offset, MIPS_R_SP);
		store_offset -= sizeof(long);
	}
	if (ctx->flags & EBPF_SAVE_S0) {
		FUNC1(ctx, ld, lw,
					MIPS_R_S0, store_offset, MIPS_R_SP);
		store_offset -= sizeof(long);
	}
	if (ctx->flags & EBPF_SAVE_S1) {
		FUNC1(ctx, ld, lw,
					MIPS_R_S1, store_offset, MIPS_R_SP);
		store_offset -= sizeof(long);
	}
	if (ctx->flags & EBPF_SAVE_S2) {
		FUNC1(ctx, ld, lw,
				MIPS_R_S2, store_offset, MIPS_R_SP);
		store_offset -= sizeof(long);
	}
	if (ctx->flags & EBPF_SAVE_S3) {
		FUNC1(ctx, ld, lw,
					MIPS_R_S3, store_offset, MIPS_R_SP);
		store_offset -= sizeof(long);
	}
	if (ctx->flags & EBPF_SAVE_S4) {
		FUNC1(ctx, ld, lw,
					MIPS_R_S4, store_offset, MIPS_R_SP);
		store_offset -= sizeof(long);
	}
	FUNC0(ctx, jr, dest_reg);

	if (stack_adjust)
		FUNC1(ctx, daddiu, addiu,
					MIPS_R_SP, MIPS_R_SP, stack_adjust);
	else
		FUNC0(ctx, nop);

	return 0;
}