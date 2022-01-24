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
struct TYPE_7__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {int nbytes; int total; int stride; TYPE_4__ src; TYPE_2__ dst; int /*<<< orphan*/  iv; } ;
struct skcipher_request {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct aesbs_ctx {int /*<<< orphan*/  rounds; int /*<<< orphan*/  rk; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct aesbs_ctx* FUNC1 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC2 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 unsigned int FUNC6 (unsigned int,int) ; 
 int FUNC7 (struct skcipher_walk*,unsigned int) ; 
 int FUNC8 (struct skcipher_walk*,struct skcipher_request*,int) ; 

__attribute__((used)) static int FUNC9(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC2(req);
	struct aesbs_ctx *ctx = FUNC1(tfm);
	struct skcipher_walk walk;
	u8 buf[AES_BLOCK_SIZE];
	int err;

	err = FUNC8(&walk, req, false);

	while (walk.nbytes > 0) {
		unsigned int blocks = walk.nbytes / AES_BLOCK_SIZE;
		u8 *final = (walk.total % AES_BLOCK_SIZE) ? buf : NULL;

		if (walk.nbytes < walk.total) {
			blocks = FUNC6(blocks,
					    walk.stride / AES_BLOCK_SIZE);
			final = NULL;
		}

		FUNC4();
		FUNC0(walk.dst.virt.addr, walk.src.virt.addr,
				  ctx->rk, ctx->rounds, blocks, walk.iv, final);
		FUNC5();

		if (final) {
			u8 *dst = walk.dst.virt.addr + blocks * AES_BLOCK_SIZE;
			u8 *src = walk.src.virt.addr + blocks * AES_BLOCK_SIZE;

			FUNC3(dst, src, final,
				       walk.total % AES_BLOCK_SIZE);

			err = FUNC7(&walk, 0);
			break;
		}
		err = FUNC7(&walk,
					 walk.nbytes - blocks * AES_BLOCK_SIZE);
	}

	return err;
}