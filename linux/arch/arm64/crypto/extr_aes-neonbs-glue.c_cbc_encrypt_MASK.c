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
struct skcipher_walk {unsigned int nbytes; int /*<<< orphan*/  iv; TYPE_4__ src; TYPE_2__ dst; } ;
struct skcipher_request {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  rounds; } ;
struct aesbs_cbc_ctx {TYPE_5__ key; int /*<<< orphan*/  enc; } ;

/* Variables and functions */
 unsigned int AES_BLOCK_SIZE ; 
 struct aesbs_cbc_ctx* FUNC0 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC1 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct skcipher_walk*,unsigned int) ; 
 int FUNC6 (struct skcipher_walk*,struct skcipher_request*,int) ; 

__attribute__((used)) static int FUNC7(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC1(req);
	struct aesbs_cbc_ctx *ctx = FUNC0(tfm);
	struct skcipher_walk walk;
	int err;

	err = FUNC6(&walk, req, false);

	while (walk.nbytes >= AES_BLOCK_SIZE) {
		unsigned int blocks = walk.nbytes / AES_BLOCK_SIZE;

		/* fall back to the non-bitsliced NEON implementation */
		FUNC2();
		FUNC4(walk.dst.virt.addr, walk.src.virt.addr,
				     ctx->enc, ctx->key.rounds, blocks,
				     walk.iv);
		FUNC3();
		err = FUNC5(&walk, walk.nbytes % AES_BLOCK_SIZE);
	}
	return err;
}