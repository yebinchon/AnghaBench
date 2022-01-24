#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct skcipher_request {size_t iv; int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_2__ base; } ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  cipher; } ;
struct crypto4xx_ctx {TYPE_1__ sw_cipher; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 unsigned int AES_BLOCK_SIZE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct skcipher_request*) ; 
 int FUNC4 (struct skcipher_request*) ; 
 struct crypto4xx_ctx* FUNC5 (struct crypto_skcipher*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 size_t FUNC8 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC9 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  subreq ; 

__attribute__((used)) static int
FUNC14(struct skcipher_request *req, bool encrypt)
{
	struct crypto_skcipher *cipher = FUNC9(req);
	struct crypto4xx_ctx *ctx = FUNC5(cipher);
	size_t iv_len = FUNC8(cipher);
	unsigned int counter = FUNC2((__be32 *)(req->iv + iv_len - 4));
	unsigned int nblks = FUNC0(req->cryptlen, AES_BLOCK_SIZE) /
			AES_BLOCK_SIZE;

	/*
	 * The hardware uses only the last 32-bits as the counter while the
	 * kernel tests (aes_ctr_enc_tv_template[4] for example) expect that
	 * the whole IV is a counter.  So fallback if the counter is going to
	 * overlow.
	 */
	if (counter + nblks < counter) {
		FUNC1(subreq, ctx->sw_cipher.cipher);
		int ret;

		FUNC12(subreq, ctx->sw_cipher.cipher);
		FUNC10(subreq, req->base.flags,
			NULL, NULL);
		FUNC11(subreq, req->src, req->dst,
			req->cryptlen, req->iv);
		ret = encrypt ? FUNC7(subreq)
			: FUNC6(subreq);
		FUNC13(subreq);
		return ret;
	}

	return encrypt ? FUNC4(req)
		       : FUNC3(req);
}