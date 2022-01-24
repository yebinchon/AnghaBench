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
struct skcipher_request {int cryptlen; int /*<<< orphan*/  iv; struct scatterlist* dst; struct scatterlist* src; } ;
struct scatterlist {int dummy; } ;
struct scatter_walk {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_kw_block {int /*<<< orphan*/  A; int /*<<< orphan*/  R; } ;
struct crypto_cipher {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int SEMIBSIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_cipher*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct crypto_skcipher* FUNC2 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_kw_block*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct scatter_walk*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct scatter_walk*,struct scatterlist*) ; 
 struct crypto_cipher* FUNC7 (struct crypto_skcipher*) ; 

__attribute__((used)) static int FUNC8(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC2(req);
	struct crypto_cipher *cipher = FUNC7(tfm);
	struct crypto_kw_block block;
	struct scatterlist *src, *dst;
	u64 t = 1;
	unsigned int i;

	/*
	 * Require at least 2 semiblocks (note, the 3rd semiblock that is
	 * required by SP800-38F is the IV that occupies the first semiblock.
	 * This means that the dst memory must be one semiblock larger than src.
	 * Also ensure that the given data is aligned to semiblock.
	 */
	if (req->cryptlen < (2 * SEMIBSIZE) || req->cryptlen % SEMIBSIZE)
		return -EINVAL;

	/*
	 * Place the predefined IV into block A -- for encrypt, the caller
	 * does not need to provide an IV, but he needs to fetch the final IV.
	 */
	block.A = FUNC0(0xa6a6a6a6a6a6a6a6ULL);

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

		FUNC6(&src_walk, src);
		FUNC6(&dst_walk, dst);

		while (nbytes) {
			/* get the source block */
			FUNC5(&block.R, &src_walk, SEMIBSIZE,
					       false);

			/* perform KW operation: encrypt block */
			FUNC1(cipher, (u8 *)&block,
						  (u8 *)&block);
			/* perform KW operation: modify IV with counter */
			block.A ^= FUNC0(t);
			t++;

			/* Copy block->R into place */
			FUNC5(&block.R, &dst_walk, SEMIBSIZE,
					       true);

			nbytes -= SEMIBSIZE;
		}

		/* we now start to operate on the dst SGL only */
		src = req->dst;
		dst = req->dst;
	}

	/* establish the IV for the caller to pick up */
	FUNC3(req->iv, &block.A, SEMIBSIZE);

	FUNC4(&block, sizeof(struct crypto_kw_block));

	return 0;
}