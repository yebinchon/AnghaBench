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
struct TYPE_9__ {int /*<<< orphan*/  addr; } ;
struct TYPE_10__ {TYPE_3__ virt; } ;
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {TYPE_1__ virt; } ;
struct skcipher_walk {int nbytes; int total; int /*<<< orphan*/  iv; TYPE_4__ src; TYPE_2__ dst; } ;
struct skcipher_request {int cryptlen; int /*<<< orphan*/  iv; struct scatterlist* dst; struct scatterlist* src; } ;
struct scatterlist {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  key_enc; } ;
struct TYPE_12__ {int /*<<< orphan*/  key_dec; } ;
struct crypto_aes_xts_ctx {TYPE_5__ key2; TYPE_6__ key1; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int FUNC0 (int,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct crypto_aes_xts_ctx* FUNC2 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC3 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (TYPE_6__*) ; 
 struct scatterlist* FUNC8 (struct scatterlist*,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC10 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct skcipher_request*,struct scatterlist*,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct skcipher_request*,struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC13 (struct skcipher_walk*) ; 
 int FUNC14 (struct skcipher_walk*,int) ; 
 int FUNC15 (struct skcipher_walk*,struct skcipher_request*,int) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC3(req);
	struct crypto_aes_xts_ctx *ctx = FUNC2(tfm);
	int err, first, rounds = FUNC7(&ctx->key1);
	int tail = req->cryptlen % AES_BLOCK_SIZE;
	struct scatterlist sg_src[2], sg_dst[2];
	struct skcipher_request subreq;
	struct scatterlist *src, *dst;
	struct skcipher_walk walk;

	if (req->cryptlen < AES_BLOCK_SIZE)
		return -EINVAL;

	err = FUNC15(&walk, req, false);

	if (FUNC16(tail > 0 && walk.nbytes < walk.total)) {
		int xts_blocks = FUNC0(req->cryptlen,
					      AES_BLOCK_SIZE) - 2;

		FUNC13(&walk);

		FUNC12(&subreq, tfm);
		FUNC10(&subreq,
					      FUNC9(req),
					      NULL, NULL);
		FUNC11(&subreq, req->src, req->dst,
					   xts_blocks * AES_BLOCK_SIZE,
					   req->iv);
		req = &subreq;
		err = FUNC15(&walk, req, false);
	} else {
		tail = 0;
	}

	for (first = 1; walk.nbytes >= AES_BLOCK_SIZE; first = 0) {
		int nbytes = walk.nbytes;

		if (walk.nbytes < walk.total)
			nbytes &= ~(AES_BLOCK_SIZE - 1);

		FUNC4();
		FUNC1(walk.dst.virt.addr, walk.src.virt.addr,
				   ctx->key1.key_dec, rounds, nbytes, walk.iv,
				   ctx->key2.key_enc, first);
		FUNC5();
		err = FUNC14(&walk, walk.nbytes - nbytes);
	}

	if (err || FUNC6(!tail))
		return err;

	dst = src = FUNC8(sg_src, req->src, req->cryptlen);
	if (req->dst != req->src)
		dst = FUNC8(sg_dst, req->dst, req->cryptlen);

	FUNC11(req, src, dst, AES_BLOCK_SIZE + tail,
				   req->iv);

	err = FUNC15(&walk, req, false);
	if (err)
		return err;

	FUNC4();
	FUNC1(walk.dst.virt.addr, walk.src.virt.addr,
			   ctx->key1.key_dec, rounds, walk.nbytes, walk.iv,
			   ctx->key2.key_enc, first);
	FUNC5();

	return FUNC14(&walk, 0);
}