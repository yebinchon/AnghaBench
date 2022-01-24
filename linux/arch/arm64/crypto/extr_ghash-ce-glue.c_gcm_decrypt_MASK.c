#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_9__ {int /*<<< orphan*/  const* addr; } ;
struct TYPE_10__ {TYPE_3__ virt; } ;
struct TYPE_7__ {int /*<<< orphan*/  const* addr; } ;
struct TYPE_8__ {TYPE_1__ virt; } ;
struct skcipher_walk {int total; int nbytes; TYPE_4__ src; TYPE_2__ dst; } ;
struct TYPE_11__ {int /*<<< orphan*/ * key_enc; } ;
struct gcm_aes_ctx {int /*<<< orphan*/  ghash_key; TYPE_5__ aes_key; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {scalar_t__ cryptlen; scalar_t__ assoclen; int /*<<< orphan*/  src; int /*<<< orphan*/  const* iv; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int EBADMSG ; 
 int GCM_IV_SIZE ; 
 int GHASH_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 unsigned int FUNC1 (struct crypto_aead*) ; 
 struct gcm_aes_ctx* FUNC2 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC3 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct aead_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct aead_request*,struct gcm_aes_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  pmull_ghash_update_p64 ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct skcipher_walk*,struct aead_request*,int) ; 
 int FUNC22 (struct skcipher_walk*,int) ; 

__attribute__((used)) static int FUNC23(struct aead_request *req)
{
	struct crypto_aead *aead = FUNC3(req);
	struct gcm_aes_ctx *ctx = FUNC2(aead);
	unsigned int authsize = FUNC1(aead);
	struct skcipher_walk walk;
	u8 iv[2 * AES_BLOCK_SIZE];
	u8 tag[AES_BLOCK_SIZE];
	u8 buf[2 * GHASH_BLOCK_SIZE];
	u64 dg[2] = {};
	int nrounds = FUNC16(&ctx->aes_key);
	int err;

	if (req->assoclen)
		FUNC8(req, dg);

	FUNC14(iv, req->iv, GCM_IV_SIZE);
	FUNC19(1, iv + GCM_IV_SIZE);

	err = FUNC21(&walk, req, false);

	if (FUNC13(FUNC6() && walk.total >= 2 * AES_BLOCK_SIZE)) {
		u32 const *rk = NULL;

		FUNC11();
		FUNC18(tag, iv, ctx->aes_key.key_enc, nrounds);
		FUNC19(2, iv + GCM_IV_SIZE);

		do {
			int blocks = walk.nbytes / (2 * AES_BLOCK_SIZE) * 2;
			int rem = walk.total - blocks * AES_BLOCK_SIZE;

			if (rk)
				FUNC11();

			FUNC17(blocks, dg, walk.dst.virt.addr,
					  walk.src.virt.addr, &ctx->ghash_key,
					  iv, rk, nrounds);

			/* check if this is the final iteration of the loop */
			if (rem < (2 * AES_BLOCK_SIZE)) {
				u8 *iv2 = iv + AES_BLOCK_SIZE;

				if (rem > AES_BLOCK_SIZE) {
					FUNC14(iv2, iv, AES_BLOCK_SIZE);
					FUNC4(iv2, AES_BLOCK_SIZE);
				}

				FUNC18(iv, iv, NULL, nrounds);

				if (rem > AES_BLOCK_SIZE)
					FUNC18(iv2, iv2, NULL,
								nrounds);
			}

			FUNC12();

			err = FUNC22(&walk,
					walk.nbytes % (2 * AES_BLOCK_SIZE));

			rk = ctx->aes_key.key_enc;
		} while (walk.nbytes >= 2 * AES_BLOCK_SIZE);
	} else {
		FUNC0(&ctx->aes_key, tag, iv);
		FUNC19(2, iv + GCM_IV_SIZE);

		while (walk.nbytes >= (2 * AES_BLOCK_SIZE)) {
			int blocks = walk.nbytes / (2 * AES_BLOCK_SIZE) * 2;
			u8 *dst = walk.dst.virt.addr;
			u8 *src = walk.src.virt.addr;

			FUNC10(blocks, dg, walk.src.virt.addr,
					&ctx->ghash_key, NULL,
					pmull_ghash_update_p64);

			do {
				FUNC0(&ctx->aes_key, buf, iv);
				FUNC7(dst, src, buf, AES_BLOCK_SIZE);
				FUNC4(iv, AES_BLOCK_SIZE);

				dst += AES_BLOCK_SIZE;
				src += AES_BLOCK_SIZE;
			} while (--blocks > 0);

			err = FUNC22(&walk,
						 walk.nbytes % (2 * AES_BLOCK_SIZE));
		}
		if (walk.nbytes) {
			if (walk.nbytes > AES_BLOCK_SIZE) {
				u8 *iv2 = iv + AES_BLOCK_SIZE;

				FUNC14(iv2, iv, AES_BLOCK_SIZE);
				FUNC4(iv2, AES_BLOCK_SIZE);

				FUNC0(&ctx->aes_key, iv2, iv2);
			}
			FUNC0(&ctx->aes_key, iv, iv);
		}
	}

	/* handle the tail */
	if (walk.nbytes) {
		const u8 *src = walk.src.virt.addr;
		const u8 *head = NULL;
		unsigned int nbytes = walk.nbytes;

		if (walk.nbytes > GHASH_BLOCK_SIZE) {
			head = src;
			src += GHASH_BLOCK_SIZE;
			nbytes %= GHASH_BLOCK_SIZE;
		}

		FUNC14(buf, src, nbytes);
		FUNC15(buf + nbytes, 0, GHASH_BLOCK_SIZE - nbytes);
		FUNC10(!!nbytes, dg, buf, &ctx->ghash_key, head,
				pmull_ghash_update_p64);

		FUNC7(walk.dst.virt.addr, walk.src.virt.addr, iv,
			       walk.nbytes);

		err = FUNC22(&walk, 0);
	}

	if (err)
		return err;

	FUNC9(req, ctx, dg, tag, req->cryptlen - authsize);

	/* compare calculated auth tag with the stored one */
	FUNC20(buf, req->src,
				 req->assoclen + req->cryptlen - authsize,
				 authsize, 0);

	if (FUNC5(tag, buf, authsize))
		return -EBADMSG;
	return 0;
}