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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct jit_ctx {int idx; int epilogue_offset; struct arm64_jit_data* offset; int /*<<< orphan*/ * image; struct bpf_prog* prog; } ;
struct bpf_prog {int jited; int jited_len; TYPE_1__* aux; int /*<<< orphan*/  is_func; int /*<<< orphan*/ * bpf_func; int /*<<< orphan*/  len; int /*<<< orphan*/  jit_requested; } ;
struct bpf_binary_header {int dummy; } ;
struct arm64_jit_data {struct bpf_binary_header* header; int /*<<< orphan*/ * image; struct jit_ctx ctx; } ;
typedef  int /*<<< orphan*/  ctx ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {struct arm64_jit_data* jit_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_binary_header*,int /*<<< orphan*/ *) ; 
 struct bpf_binary_header* FUNC2 (int,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_binary_header*) ; 
 int /*<<< orphan*/  FUNC4 (struct bpf_binary_header*) ; 
 struct bpf_prog* FUNC5 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int bpf_jit_enable ; 
 int /*<<< orphan*/  FUNC7 (struct bpf_prog*,struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC8 (struct bpf_prog*,struct arm64_jit_data*) ; 
 int FUNC9 (struct bpf_prog*) ; 
 scalar_t__ FUNC10 (struct jit_ctx*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct jit_ctx*) ; 
 scalar_t__ FUNC12 (struct jit_ctx*,int) ; 
 int /*<<< orphan*/  jit_fill_hole ; 
 struct arm64_jit_data* FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct arm64_jit_data*) ; 
 struct arm64_jit_data* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct jit_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,int) ; 
 scalar_t__ FUNC18 (struct jit_ctx*) ; 

struct bpf_prog *FUNC19(struct bpf_prog *prog)
{
	struct bpf_prog *tmp, *orig_prog = prog;
	struct bpf_binary_header *header;
	struct arm64_jit_data *jit_data;
	bool was_classic = FUNC9(prog);
	bool tmp_blinded = false;
	bool extra_pass = false;
	struct jit_ctx ctx;
	int image_size;
	u8 *image_ptr;

	if (!prog->jit_requested)
		return orig_prog;

	tmp = FUNC5(prog);
	/* If blinding was requested and we failed during blinding,
	 * we must fall back to the interpreter.
	 */
	if (FUNC0(tmp))
		return orig_prog;
	if (tmp != prog) {
		tmp_blinded = true;
		prog = tmp;
	}

	jit_data = prog->aux->jit_data;
	if (!jit_data) {
		jit_data = FUNC15(sizeof(*jit_data), GFP_KERNEL);
		if (!jit_data) {
			prog = orig_prog;
			goto out;
		}
		prog->aux->jit_data = jit_data;
	}
	if (jit_data->ctx.offset) {
		ctx = jit_data->ctx;
		image_ptr = jit_data->image;
		header = jit_data->header;
		extra_pass = true;
		image_size = sizeof(u32) * ctx.idx;
		goto skip_init_ctx;
	}
	FUNC16(&ctx, 0, sizeof(ctx));
	ctx.prog = prog;

	ctx.offset = FUNC13(prog->len, sizeof(int), GFP_KERNEL);
	if (ctx.offset == NULL) {
		prog = orig_prog;
		goto out_off;
	}

	/* 1. Initial fake pass to compute ctx->idx. */

	/* Fake pass to fill in ctx->offset. */
	if (FUNC10(&ctx, extra_pass)) {
		prog = orig_prog;
		goto out_off;
	}

	if (FUNC12(&ctx, was_classic)) {
		prog = orig_prog;
		goto out_off;
	}

	ctx.epilogue_offset = ctx.idx;
	FUNC11(&ctx);

	/* Now we know the actual image size. */
	image_size = sizeof(u32) * ctx.idx;
	header = FUNC2(image_size, &image_ptr,
				      sizeof(u32), jit_fill_hole);
	if (header == NULL) {
		prog = orig_prog;
		goto out_off;
	}

	/* 2. Now, the actual pass. */

	ctx.image = (__le32 *)image_ptr;
skip_init_ctx:
	ctx.idx = 0;

	FUNC12(&ctx, was_classic);

	if (FUNC10(&ctx, extra_pass)) {
		FUNC3(header);
		prog = orig_prog;
		goto out_off;
	}

	FUNC11(&ctx);

	/* 3. Extra pass to validate JITed code. */
	if (FUNC18(&ctx)) {
		FUNC3(header);
		prog = orig_prog;
		goto out_off;
	}

	/* And we're done. */
	if (bpf_jit_enable > 1)
		FUNC6(prog->len, image_size, 2, ctx.image);

	FUNC1(header, ctx.image + ctx.idx);

	if (!prog->is_func || extra_pass) {
		if (extra_pass && ctx.idx != jit_data->ctx.idx) {
			FUNC17("multi-func JIT bug %d != %d\n",
				    ctx.idx, jit_data->ctx.idx);
			FUNC3(header);
			prog->bpf_func = NULL;
			prog->jited = 0;
			goto out_off;
		}
		FUNC4(header);
	} else {
		jit_data->ctx = ctx;
		jit_data->image = image_ptr;
		jit_data->header = header;
	}
	prog->bpf_func = (void *)ctx.image;
	prog->jited = 1;
	prog->jited_len = image_size;

	if (!prog->is_func || extra_pass) {
		FUNC8(prog, ctx.offset);
out_off:
		FUNC14(ctx.offset);
		FUNC14(jit_data);
		prog->aux->jit_data = NULL;
	}
out:
	if (tmp_blinded)
		FUNC7(prog, prog == orig_prog ?
					   tmp : orig_prog);
	return prog;
}