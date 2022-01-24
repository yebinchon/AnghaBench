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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {unsigned int nbytes; unsigned int total; TYPE_4__ src; TYPE_2__ dst; int /*<<< orphan*/  stride; } ;
struct skcipher_request {int /*<<< orphan*/  iv; } ;
struct salsa20_ctx {int dummy; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 struct salsa20_ctx* FUNC0 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC1 (struct skcipher_request*) ; 
 unsigned int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct salsa20_ctx const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct skcipher_walk*,unsigned int) ; 
 int FUNC6 (struct skcipher_walk*,struct skcipher_request*,int) ; 

__attribute__((used)) static int FUNC7(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC1(req);
	const struct salsa20_ctx *ctx = FUNC0(tfm);
	struct skcipher_walk walk;
	u32 state[16];
	int err;

	err = FUNC6(&walk, req, false);

	FUNC4(state, ctx, req->iv);

	while (walk.nbytes > 0) {
		unsigned int nbytes = walk.nbytes;

		if (nbytes < walk.total)
			nbytes = FUNC2(nbytes, walk.stride);

		FUNC3(state, walk.dst.virt.addr, walk.src.virt.addr,
				nbytes);
		err = FUNC5(&walk, walk.nbytes - nbytes);
	}

	return err;
}