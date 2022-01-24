#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  addr; } ;
struct TYPE_9__ {TYPE_3__ virt; } ;
struct TYPE_6__ {int /*<<< orphan*/  addr; } ;
struct TYPE_7__ {TYPE_1__ virt; } ;
struct skcipher_walk {unsigned int nbytes; unsigned int total; unsigned int stride; int /*<<< orphan*/  iv; TYPE_4__ src; TYPE_2__ dst; } ;
struct skcipher_request {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  rounds; int /*<<< orphan*/  rk; } ;
struct aesbs_cbc_ctx {TYPE_5__ key; } ;

/* Variables and functions */
 unsigned int AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 struct aesbs_cbc_ctx* FUNC1 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC2 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned int FUNC5 (unsigned int,unsigned int) ; 
 int FUNC6 (struct skcipher_walk*,unsigned int) ; 
 int FUNC7 (struct skcipher_walk*,struct skcipher_request*,int) ; 

__attribute__((used)) static int FUNC8(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC2(req);
	struct aesbs_cbc_ctx *ctx = FUNC1(tfm);
	struct skcipher_walk walk;
	int err;

	err = FUNC7(&walk, req, false);

	while (walk.nbytes >= AES_BLOCK_SIZE) {
		unsigned int blocks = walk.nbytes / AES_BLOCK_SIZE;

		if (walk.nbytes < walk.total)
			blocks = FUNC5(blocks,
					    walk.stride / AES_BLOCK_SIZE);

		FUNC3();
		FUNC0(walk.dst.virt.addr, walk.src.virt.addr,
				  ctx->key.rk, ctx->key.rounds, blocks,
				  walk.iv);
		FUNC4();
		err = FUNC6(&walk,
					 walk.nbytes - blocks * AES_BLOCK_SIZE);
	}

	return err;
}