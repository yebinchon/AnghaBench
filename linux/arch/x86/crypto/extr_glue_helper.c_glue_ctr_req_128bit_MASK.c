#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const u128 ;
struct TYPE_11__ {int /*<<< orphan*/  const* addr; } ;
struct TYPE_12__ {TYPE_5__ virt; } ;
struct TYPE_7__ {int /*<<< orphan*/  const* addr; } ;
struct TYPE_8__ {TYPE_1__ virt; } ;
struct skcipher_walk {unsigned int nbytes; scalar_t__ iv; TYPE_6__ dst; TYPE_2__ src; } ;
struct skcipher_request {int dummy; } ;
struct common_glue_ctx {unsigned int num_funcs; TYPE_4__* funcs; int /*<<< orphan*/  fpu_blocks_limit; } ;
typedef  int /*<<< orphan*/  le128 ;
typedef  int /*<<< orphan*/  be128 ;
struct TYPE_9__ {int /*<<< orphan*/  (* ctr ) (void*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;} ;
struct TYPE_10__ {unsigned int num_blocks; TYPE_3__ fn_u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct skcipher_request*) ; 
 int FUNC3 (unsigned int const,int /*<<< orphan*/ ,struct skcipher_walk*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC7 (struct skcipher_walk*,unsigned int) ; 
 int FUNC8 (struct skcipher_walk*,struct skcipher_request*,int) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int FUNC11(const struct common_glue_ctx *gctx,
			struct skcipher_request *req)
{
	void *ctx = FUNC1(FUNC2(req));
	const unsigned int bsize = 128 / 8;
	struct skcipher_walk walk;
	bool fpu_enabled = false;
	unsigned int nbytes;
	int err;

	err = FUNC8(&walk, req, false);

	while ((nbytes = walk.nbytes) >= bsize) {
		const u128 *src = walk.src.virt.addr;
		u128 *dst = walk.dst.virt.addr;
		unsigned int func_bytes, num_blocks;
		unsigned int i;
		le128 ctrblk;

		fpu_enabled = FUNC3(bsize, gctx->fpu_blocks_limit,
					     &walk, fpu_enabled, nbytes);

		FUNC0(&ctrblk, (be128 *)walk.iv);

		for (i = 0; i < gctx->num_funcs; i++) {
			num_blocks = gctx->funcs[i].num_blocks;
			func_bytes = bsize * num_blocks;

			if (nbytes < func_bytes)
				continue;

			/* Process multi-block batch */
			do {
				gctx->funcs[i].fn_u.ctr(ctx, dst, src, &ctrblk);
				src += num_blocks;
				dst += num_blocks;
				nbytes -= func_bytes;
			} while (nbytes >= func_bytes);

			if (nbytes < bsize)
				break;
		}

		FUNC5((be128 *)walk.iv, &ctrblk);
		err = FUNC7(&walk, nbytes);
	}

	FUNC4(fpu_enabled);

	if (nbytes) {
		le128 ctrblk;
		u128 tmp;

		FUNC0(&ctrblk, (be128 *)walk.iv);
		FUNC6(&tmp, walk.src.virt.addr, nbytes);
		gctx->funcs[gctx->num_funcs - 1].fn_u.ctr(ctx, &tmp, &tmp,
							  &ctrblk);
		FUNC6(walk.dst.virt.addr, &tmp, nbytes);
		FUNC5((be128 *)walk.iv, &ctrblk);

		err = FUNC7(&walk, 0);
	}

	return err;
}