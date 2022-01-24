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
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {int /*<<< orphan*/  iv; int /*<<< orphan*/  nbytes; TYPE_4__ src; TYPE_2__ dst; } ;
struct skcipher_request {int cryptlen; int /*<<< orphan*/  iv; struct scatterlist* dst; struct scatterlist* src; } ;
struct scatterlist {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_aes_ctx {int /*<<< orphan*/  key_dec; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int FUNC0 (int,int) ; 
 int EINVAL ; 
 int FUNC1 (struct skcipher_request*,struct skcipher_walk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct crypto_aes_ctx* FUNC3 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC4 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_aes_ctx*) ; 
 struct scatterlist* FUNC8 (struct scatterlist*,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC10 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct skcipher_request*,struct scatterlist*,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct skcipher_request*,struct crypto_skcipher*) ; 
 int FUNC13 (struct skcipher_walk*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct skcipher_walk*,struct skcipher_request*,int) ; 

__attribute__((used)) static int FUNC15(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC4(req);
	struct crypto_aes_ctx *ctx = FUNC3(tfm);
	int cbc_blocks = FUNC0(req->cryptlen, AES_BLOCK_SIZE) - 2;
	struct scatterlist *src = req->src, *dst = req->dst;
	struct scatterlist sg_src[2], sg_dst[2];
	struct skcipher_request subreq;
	struct skcipher_walk walk;
	int err;

	FUNC12(&subreq, tfm);
	FUNC10(&subreq, FUNC9(req),
				      NULL, NULL);

	if (req->cryptlen <= AES_BLOCK_SIZE) {
		if (req->cryptlen < AES_BLOCK_SIZE)
			return -EINVAL;
		cbc_blocks = 1;
	}

	if (cbc_blocks > 0) {
		FUNC11(&subreq, req->src, req->dst,
					   cbc_blocks * AES_BLOCK_SIZE,
					   req->iv);

		err = FUNC14(&walk, &subreq, false) ?:
		      FUNC1(&subreq, &walk);
		if (err)
			return err;

		if (req->cryptlen == AES_BLOCK_SIZE)
			return 0;

		dst = src = FUNC8(sg_src, req->src, subreq.cryptlen);
		if (req->dst != req->src)
			dst = FUNC8(sg_dst, req->dst,
					       subreq.cryptlen);
	}

	/* handle ciphertext stealing */
	FUNC11(&subreq, src, dst,
				   req->cryptlen - cbc_blocks * AES_BLOCK_SIZE,
				   req->iv);

	err = FUNC14(&walk, &subreq, false);
	if (err)
		return err;

	FUNC5();
	FUNC2(walk.dst.virt.addr, walk.src.virt.addr,
			       ctx->key_dec, FUNC7(ctx), walk.nbytes,
			       walk.iv);
	FUNC6();

	return FUNC13(&walk, 0);
}