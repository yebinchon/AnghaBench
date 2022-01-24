#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct rv_jit_context {int ninsns; int epilogue_offset; struct rv_jit_data* offset; int /*<<< orphan*/ * insns; struct bpf_prog* prog; } ;
struct rv_jit_data {int /*<<< orphan*/  header; scalar_t__ image; struct rv_jit_context ctx; } ;
struct bpf_prog {int jited; unsigned int jited_len; TYPE_1__* aux; int /*<<< orphan*/  is_func; void* bpf_func; int /*<<< orphan*/  len; int /*<<< orphan*/  jit_requested; } ;
struct TYPE_2__ {struct rv_jit_data* jit_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct bpf_prog*) ; 
 int /*<<< orphan*/  bpf_fill_ill_insns ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct bpf_prog* FUNC4 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ *) ; 
 int bpf_jit_enable ; 
 int /*<<< orphan*/  FUNC6 (struct bpf_prog*,struct bpf_prog*) ; 
 scalar_t__ FUNC7 (struct rv_jit_context*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rv_jit_context*) ; 
 int /*<<< orphan*/  FUNC9 (struct rv_jit_context*) ; 
 struct rv_jit_data* FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rv_jit_data*) ; 
 struct rv_jit_data* FUNC12 (int,int /*<<< orphan*/ ) ; 

struct bpf_prog *FUNC13(struct bpf_prog *prog)
{
	bool tmp_blinded = false, extra_pass = false;
	struct bpf_prog *tmp, *orig_prog = prog;
	struct rv_jit_data *jit_data;
	struct rv_jit_context *ctx;
	unsigned int image_size;

	if (!prog->jit_requested)
		return orig_prog;

	tmp = FUNC4(prog);
	if (FUNC0(tmp))
		return orig_prog;
	if (tmp != prog) {
		tmp_blinded = true;
		prog = tmp;
	}

	jit_data = prog->aux->jit_data;
	if (!jit_data) {
		jit_data = FUNC12(sizeof(*jit_data), GFP_KERNEL);
		if (!jit_data) {
			prog = orig_prog;
			goto out;
		}
		prog->aux->jit_data = jit_data;
	}

	ctx = &jit_data->ctx;

	if (ctx->offset) {
		extra_pass = true;
		image_size = sizeof(u32) * ctx->ninsns;
		goto skip_init_ctx;
	}

	ctx->prog = prog;
	ctx->offset = FUNC10(prog->len, sizeof(int), GFP_KERNEL);
	if (!ctx->offset) {
		prog = orig_prog;
		goto out_offset;
	}

	/* First pass generates the ctx->offset, but does not emit an image. */
	if (FUNC7(ctx, extra_pass)) {
		prog = orig_prog;
		goto out_offset;
	}
	FUNC9(ctx);
	ctx->epilogue_offset = ctx->ninsns;
	FUNC8(ctx);

	/* Allocate image, now that we know the size. */
	image_size = sizeof(u32) * ctx->ninsns;
	jit_data->header = FUNC2(image_size, &jit_data->image,
						sizeof(u32),
						bpf_fill_ill_insns);
	if (!jit_data->header) {
		prog = orig_prog;
		goto out_offset;
	}

	/* Second, real pass, that acutally emits the image. */
	ctx->insns = (u32 *)jit_data->image;
skip_init_ctx:
	ctx->ninsns = 0;

	FUNC9(ctx);
	if (FUNC7(ctx, extra_pass)) {
		FUNC3(jit_data->header);
		prog = orig_prog;
		goto out_offset;
	}
	FUNC8(ctx);

	if (bpf_jit_enable > 1)
		FUNC5(prog->len, image_size, 2, ctx->insns);

	prog->bpf_func = (void *)ctx->insns;
	prog->jited = 1;
	prog->jited_len = image_size;

	FUNC1(jit_data->header, ctx->insns + ctx->ninsns);

	if (!prog->is_func || extra_pass) {
out_offset:
		FUNC11(ctx->offset);
		FUNC11(jit_data);
		prog->aux->jit_data = NULL;
	}
out:
	if (tmp_blinded)
		FUNC6(prog, prog == orig_prog ?
					   tmp : orig_prog);
	return prog;
}