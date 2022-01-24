#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {unsigned int nbytes; unsigned int total; TYPE_4__ src; TYPE_2__ dst; } ;
struct skcipher_request {int dummy; } ;
struct chacha_ctx {int /*<<< orphan*/  nrounds; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHACHA_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct chacha_ctx const*,int /*<<< orphan*/  const*) ; 
 unsigned int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct skcipher_walk*,unsigned int) ; 
 int FUNC4 (struct skcipher_walk*,struct skcipher_request*,int) ; 

__attribute__((used)) static int FUNC5(struct skcipher_request *req,
			     const struct chacha_ctx *ctx, const u8 *iv)
{
	struct skcipher_walk walk;
	u32 state[16];
	int err;

	err = FUNC4(&walk, req, false);

	FUNC1(state, ctx, iv);

	while (walk.nbytes > 0) {
		unsigned int nbytes = walk.nbytes;

		if (nbytes < walk.total)
			nbytes = FUNC2(nbytes, CHACHA_BLOCK_SIZE);

		FUNC0(state, walk.dst.virt.addr, walk.src.virt.addr,
			       nbytes, ctx->nrounds);
		err = FUNC3(&walk, walk.nbytes - nbytes);
	}

	return err;
}