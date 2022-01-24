#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct skcipher_walk {unsigned int nbytes; int /*<<< orphan*/  iv; } ;
struct skcipher_request {unsigned int cryptlen; int /*<<< orphan*/ * iv; struct scatterlist* dst; struct scatterlist* src; } ;
struct scatterlist {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct common_glue_ctx {int /*<<< orphan*/  fpu_blocks_limit; } ;
typedef  int /*<<< orphan*/  le128 ;
typedef  int /*<<< orphan*/  (* common_glue_func_t ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int XTS_BLOCK_SIZE ; 
 unsigned int FUNC0 (struct common_glue_ctx const*,void*,struct skcipher_walk*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC2 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (unsigned int const,int /*<<< orphan*/ ,struct skcipher_walk*,int,unsigned int const) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 struct scatterlist* FUNC7 (struct scatterlist*,struct scatterlist*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct scatterlist*,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct skcipher_request*,struct scatterlist*,struct scatterlist*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct skcipher_request*,struct crypto_skcipher*) ; 
 int FUNC12 (struct skcipher_walk*,unsigned int) ; 
 int FUNC13 (struct skcipher_walk*,struct skcipher_request*,int) ; 
 scalar_t__ FUNC14 (int const) ; 

int FUNC15(const struct common_glue_ctx *gctx,
			struct skcipher_request *req,
			common_glue_func_t tweak_fn, void *tweak_ctx,
			void *crypt_ctx, bool decrypt)
{
	const bool cts = (req->cryptlen % XTS_BLOCK_SIZE);
	const unsigned int bsize = 128 / 8;
	struct skcipher_request subreq;
	struct skcipher_walk walk;
	bool fpu_enabled = false;
	unsigned int nbytes, tail;
	int err;

	if (req->cryptlen < XTS_BLOCK_SIZE)
		return -EINVAL;

	if (FUNC14(cts)) {
		struct crypto_skcipher *tfm = FUNC2(req);

		tail = req->cryptlen % XTS_BLOCK_SIZE + XTS_BLOCK_SIZE;

		FUNC11(&subreq, tfm);
		FUNC9(&subreq,
					      FUNC1(tfm),
					      NULL, NULL);
		FUNC10(&subreq, req->src, req->dst,
					   req->cryptlen - tail, req->iv);
		req = &subreq;
	}

	err = FUNC13(&walk, req, false);
	nbytes = walk.nbytes;
	if (err)
		return err;

	/* set minimum length to bsize, for tweak_fn */
	fpu_enabled = FUNC4(bsize, gctx->fpu_blocks_limit,
				     &walk, fpu_enabled,
				     nbytes < bsize ? bsize : nbytes);

	/* calculate first value of T */
	tweak_fn(tweak_ctx, walk.iv, walk.iv);

	while (nbytes) {
		nbytes = FUNC0(gctx, crypt_ctx, &walk);

		err = FUNC12(&walk, nbytes);
		nbytes = walk.nbytes;
	}

	if (FUNC14(cts)) {
		u8 *next_tweak, *final_tweak = req->iv;
		struct scatterlist *src, *dst;
		struct scatterlist s[2], d[2];
		le128 b[2];

		dst = src = FUNC7(s, req->src, req->cryptlen);
		if (req->dst != req->src)
			dst = FUNC7(d, req->dst, req->cryptlen);

		if (decrypt) {
			next_tweak = FUNC6(b, req->iv, XTS_BLOCK_SIZE);
			FUNC3(b, b);
		} else {
			next_tweak = req->iv;
		}

		FUNC10(&subreq, src, dst, XTS_BLOCK_SIZE,
					   next_tweak);

		err = FUNC13(&walk, req, false) ?:
		      FUNC12(&walk,
				FUNC0(gctx, crypt_ctx, &walk));
		if (err)
			goto out;

		FUNC8(b, dst, 0, XTS_BLOCK_SIZE, 0);
		FUNC6(b + 1, b, tail - XTS_BLOCK_SIZE);
		FUNC8(b, src, XTS_BLOCK_SIZE,
					 tail - XTS_BLOCK_SIZE, 0);
		FUNC8(b, dst, 0, tail, 1);

		FUNC10(&subreq, dst, dst, XTS_BLOCK_SIZE,
					   final_tweak);

		err = FUNC13(&walk, req, false) ?:
		      FUNC12(&walk,
				FUNC0(gctx, crypt_ctx, &walk));
	}

out:
	FUNC5(fpu_enabled);

	return err;
}