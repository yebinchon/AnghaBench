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
typedef  int u64 ;
struct skcipher_request {int cryptlen; struct scatterlist* dst; struct scatterlist* src; int /*<<< orphan*/  iv; } ;
struct scatterlist {int dummy; } ;
struct scatter_walk {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_kw_block {int /*<<< orphan*/  A; int /*<<< orphan*/  R; } ;
struct crypto_cipher {int dummy; } ;

/* Variables and functions */
 int EBADMSG ; 
 int EINVAL ; 
 int SEMIBSIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_cipher*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct scatter_walk*,struct scatterlist*,unsigned int) ; 
 struct crypto_skcipher* FUNC3 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_kw_block*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct scatter_walk*,int,int) ; 
 struct crypto_cipher* FUNC7 (struct crypto_skcipher*) ; 

__attribute__((used)) static int FUNC8(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC3(req);
	struct crypto_cipher *cipher = FUNC7(tfm);
	struct crypto_kw_block block;
	struct scatterlist *src, *dst;
	u64 t = 6 * ((req->cryptlen) >> 3);
	unsigned int i;
	int ret = 0;

	/*
	 * Require at least 2 semiblocks (note, the 3rd semiblock that is
	 * required by SP800-38F is the IV.
	 */
	if (req->cryptlen < (2 * SEMIBSIZE) || req->cryptlen % SEMIBSIZE)
		return -EINVAL;

	/* Place the IV into block A */
	FUNC4(&block.A, req->iv, SEMIBSIZE);

	/*
	 * src scatterlist is read-only. dst scatterlist is r/w. During the
	 * first loop, src points to req->src and dst to req->dst. For any
	 * subsequent round, the code operates on req->dst only.
	 */
	src = req->src;
	dst = req->dst;

	for (i = 0; i < 6; i++) {
		struct scatter_walk src_walk, dst_walk;
		unsigned int nbytes = req->cryptlen;

		while (nbytes) {
			/* move pointer by nbytes in the SGL */
			FUNC2(&src_walk, src, nbytes);
			/* get the source block */
			FUNC6(&block.R, &src_walk, SEMIBSIZE,
					       false);

			/* perform KW operation: modify IV with counter */
			block.A ^= FUNC0(t);
			t--;
			/* perform KW operation: decrypt block */
			FUNC1(cipher, (u8 *)&block,
						  (u8 *)&block);

			/* move pointer by nbytes in the SGL */
			FUNC2(&dst_walk, dst, nbytes);
			/* Copy block->R into place */
			FUNC6(&block.R, &dst_walk, SEMIBSIZE,
					       true);

			nbytes -= SEMIBSIZE;
		}

		/* we now start to operate on the dst SGL only */
		src = req->dst;
		dst = req->dst;
	}

	/* Perform authentication check */
	if (block.A != FUNC0(0xa6a6a6a6a6a6a6a6ULL))
		ret = -EBADMSG;

	FUNC5(&block, sizeof(struct crypto_kw_block));

	return ret;
}