#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct skcipher_request {unsigned int cryptlen; TYPE_1__ base; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct crypto_skcipher {int dummy; } ;
struct adiantum_tfm_ctx {int /*<<< orphan*/  streamcipher; int /*<<< orphan*/  blockcipher; } ;
struct TYPE_5__ {int /*<<< orphan*/  streamcipher_req; } ;
struct TYPE_6__ {scalar_t__* words; int /*<<< orphan*/  bytes; int /*<<< orphan*/  bignum; } ;
struct adiantum_request_ctx {int enc; TYPE_2__ u; TYPE_3__ rbuf; int /*<<< orphan*/  header_hash; } ;
typedef  int /*<<< orphan*/  le128 ;

/* Variables and functions */
 int BLOCKCIPHER_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CHACHA_BLOCK_SIZE ; 
 int EINVAL ; 
 int XCHACHA_IV_SIZE ; 
 int FUNC1 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct skcipher_request*) ; 
 int FUNC3 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  adiantum_streamcipher_done ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct adiantum_tfm_ctx* FUNC6 (struct crypto_skcipher*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 struct crypto_skcipher* FUNC8 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC10 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int const,int,int /*<<< orphan*/ ) ; 
 struct adiantum_request_ctx* FUNC12 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct skcipher_request *req, bool enc)
{
	struct crypto_skcipher *tfm = FUNC8(req);
	const struct adiantum_tfm_ctx *tctx = FUNC6(tfm);
	struct adiantum_request_ctx *rctx = FUNC12(req);
	const unsigned int bulk_len = req->cryptlen - BLOCKCIPHER_BLOCK_SIZE;
	unsigned int stream_len;
	le128 digest;
	int err;

	if (req->cryptlen < BLOCKCIPHER_BLOCK_SIZE)
		return -EINVAL;

	rctx->enc = enc;

	/*
	 * First hash step
	 *	enc: P_M = P_R + H_{K_H}(T, P_L)
	 *	dec: C_M = C_R + H_{K_H}(T, C_L)
	 */
	FUNC2(req);
	err = FUNC3(req, req->src, &digest);
	if (err)
		return err;
	FUNC9(&digest, &digest, &rctx->header_hash);
	FUNC11(&rctx->rbuf.bignum, req->src,
				 bulk_len, BLOCKCIPHER_BLOCK_SIZE, 0);
	FUNC9(&rctx->rbuf.bignum, &rctx->rbuf.bignum, &digest);

	/* If encrypting, encrypt P_M with the block cipher to get C_M */
	if (enc)
		FUNC5(tctx->blockcipher, rctx->rbuf.bytes,
					  rctx->rbuf.bytes);

	/* Initialize the rest of the XChaCha IV (first part is C_M) */
	FUNC0(BLOCKCIPHER_BLOCK_SIZE != 16);
	FUNC0(XCHACHA_IV_SIZE != 32);	/* nonce || stream position */
	rctx->rbuf.words[4] = FUNC4(1);
	rctx->rbuf.words[5] = 0;
	rctx->rbuf.words[6] = 0;
	rctx->rbuf.words[7] = 0;

	/*
	 * XChaCha needs to be done on all the data except the last 16 bytes;
	 * for disk encryption that usually means 4080 or 496 bytes.  But ChaCha
	 * implementations tend to be most efficient when passed a whole number
	 * of 64-byte ChaCha blocks, or sometimes even a multiple of 256 bytes.
	 * And here it doesn't matter whether the last 16 bytes are written to,
	 * as the second hash step will overwrite them.  Thus, round the XChaCha
	 * length up to the next 64-byte boundary if possible.
	 */
	stream_len = bulk_len;
	if (FUNC10(stream_len, CHACHA_BLOCK_SIZE) <= req->cryptlen)
		stream_len = FUNC10(stream_len, CHACHA_BLOCK_SIZE);

	FUNC15(&rctx->u.streamcipher_req, tctx->streamcipher);
	FUNC14(&rctx->u.streamcipher_req, req->src,
				   req->dst, stream_len, &rctx->rbuf);
	FUNC13(&rctx->u.streamcipher_req,
				      req->base.flags,
				      adiantum_streamcipher_done, req);
	return FUNC7(&rctx->u.streamcipher_req) ?:
		FUNC1(req);
}