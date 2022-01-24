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
struct skcipher_request {unsigned int cryptlen; int /*<<< orphan*/  dst; } ;
struct crypto_skcipher {int dummy; } ;
struct adiantum_tfm_ctx {int /*<<< orphan*/  blockcipher; } ;
struct TYPE_2__ {int /*<<< orphan*/  bignum; int /*<<< orphan*/  bytes; } ;
struct adiantum_request_ctx {TYPE_1__ rbuf; int /*<<< orphan*/  header_hash; int /*<<< orphan*/  enc; } ;
typedef  int /*<<< orphan*/  le128 ;

/* Variables and functions */
 unsigned int BLOCKCIPHER_BLOCK_SIZE ; 
 int FUNC0 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct adiantum_tfm_ctx* FUNC2 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC3 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int const,unsigned int,int) ; 
 struct adiantum_request_ctx* FUNC7 (struct skcipher_request*) ; 

__attribute__((used)) static int FUNC8(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC3(req);
	const struct adiantum_tfm_ctx *tctx = FUNC2(tfm);
	struct adiantum_request_ctx *rctx = FUNC7(req);
	const unsigned int bulk_len = req->cryptlen - BLOCKCIPHER_BLOCK_SIZE;
	le128 digest;
	int err;

	/* If decrypting, decrypt C_M with the block cipher to get P_M */
	if (!rctx->enc)
		FUNC1(tctx->blockcipher, rctx->rbuf.bytes,
					  rctx->rbuf.bytes);

	/*
	 * Second hash step
	 *	enc: C_R = C_M - H_{K_H}(T, C_L)
	 *	dec: P_R = P_M - H_{K_H}(T, P_L)
	 */
	err = FUNC0(req, req->dst, &digest);
	if (err)
		return err;
	FUNC4(&digest, &digest, &rctx->header_hash);
	FUNC5(&rctx->rbuf.bignum, &rctx->rbuf.bignum, &digest);
	FUNC6(&rctx->rbuf.bignum, req->dst,
				 bulk_len, BLOCKCIPHER_BLOCK_SIZE, 1);
	return 0;
}