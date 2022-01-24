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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_9__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_10__ {TYPE_3__ virt; } ;
struct TYPE_7__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_8__ {TYPE_1__ virt; } ;
struct skcipher_walk {int total; int nbytes; TYPE_4__ src; TYPE_2__ dst; } ;
struct TYPE_11__ {int /*<<< orphan*/ * key_enc; } ;
struct gcm_aes_ctx {int /*<<< orphan*/  ghash_key; TYPE_5__ aes_key; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {scalar_t__ cryptlen; scalar_t__ assoclen; int /*<<< orphan*/  dst; int /*<<< orphan*/ * iv; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int GCM_IV_SIZE ; 
 int GHASH_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_aead*) ; 
 struct gcm_aes_ctx* FUNC2 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC3 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct aead_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct aead_request*,struct gcm_aes_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  pmull_ghash_update_p64 ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC20 (struct skcipher_walk*,struct aead_request*,int) ; 
 int FUNC21 (struct skcipher_walk*,int) ; 

__attribute__((used)) static int FUNC22(struct aead_request *req)
{
	struct crypto_aead *aead = FUNC3(req);
	struct gcm_aes_ctx *ctx = FUNC2(aead);
	struct skcipher_walk walk;
	u8 iv[AES_BLOCK_SIZE];
	u8 ks[2 * AES_BLOCK_SIZE];
	u8 tag[AES_BLOCK_SIZE];
	u64 dg[2] = {};
	int nrounds = FUNC15(&ctx->aes_key);
	int err;

	if (req->assoclen)
		FUNC7(req, dg);

	FUNC13(iv, req->iv, GCM_IV_SIZE);
	FUNC18(1, iv + GCM_IV_SIZE);

	err = FUNC20(&walk, req, false);

	if (FUNC12(FUNC5() && walk.total >= 2 * AES_BLOCK_SIZE)) {
		u32 const *rk = NULL;

		FUNC10();
		FUNC17(tag, iv, ctx->aes_key.key_enc, nrounds);
		FUNC18(2, iv + GCM_IV_SIZE);
		FUNC17(ks, iv, NULL, nrounds);
		FUNC18(3, iv + GCM_IV_SIZE);
		FUNC17(ks + AES_BLOCK_SIZE, iv, NULL, nrounds);
		FUNC18(4, iv + GCM_IV_SIZE);

		do {
			int blocks = walk.nbytes / (2 * AES_BLOCK_SIZE) * 2;

			if (rk)
				FUNC10();

			FUNC16(blocks, dg, walk.dst.virt.addr,
					  walk.src.virt.addr, &ctx->ghash_key,
					  iv, rk, nrounds, ks);
			FUNC11();

			err = FUNC21(&walk,
					walk.nbytes % (2 * AES_BLOCK_SIZE));

			rk = ctx->aes_key.key_enc;
		} while (walk.nbytes >= 2 * AES_BLOCK_SIZE);
	} else {
		FUNC0(&ctx->aes_key, tag, iv);
		FUNC18(2, iv + GCM_IV_SIZE);

		while (walk.nbytes >= (2 * AES_BLOCK_SIZE)) {
			const int blocks =
				walk.nbytes / (2 * AES_BLOCK_SIZE) * 2;
			u8 *dst = walk.dst.virt.addr;
			u8 *src = walk.src.virt.addr;
			int remaining = blocks;

			do {
				FUNC0(&ctx->aes_key, ks, iv);
				FUNC6(dst, src, ks, AES_BLOCK_SIZE);
				FUNC4(iv, AES_BLOCK_SIZE);

				dst += AES_BLOCK_SIZE;
				src += AES_BLOCK_SIZE;
			} while (--remaining > 0);

			FUNC9(blocks, dg,
					walk.dst.virt.addr, &ctx->ghash_key,
					NULL, pmull_ghash_update_p64);

			err = FUNC21(&walk,
						 walk.nbytes % (2 * AES_BLOCK_SIZE));
		}
		if (walk.nbytes) {
			FUNC0(&ctx->aes_key, ks, iv);
			if (walk.nbytes > AES_BLOCK_SIZE) {
				FUNC4(iv, AES_BLOCK_SIZE);
				FUNC0(&ctx->aes_key, ks + AES_BLOCK_SIZE, iv);
			}
		}
	}

	/* handle the tail */
	if (walk.nbytes) {
		u8 buf[GHASH_BLOCK_SIZE];
		unsigned int nbytes = walk.nbytes;
		u8 *dst = walk.dst.virt.addr;
		u8 *head = NULL;

		FUNC6(walk.dst.virt.addr, walk.src.virt.addr, ks,
			       walk.nbytes);

		if (walk.nbytes > GHASH_BLOCK_SIZE) {
			head = dst;
			dst += GHASH_BLOCK_SIZE;
			nbytes %= GHASH_BLOCK_SIZE;
		}

		FUNC13(buf, dst, nbytes);
		FUNC14(buf + nbytes, 0, GHASH_BLOCK_SIZE - nbytes);
		FUNC9(!!nbytes, dg, buf, &ctx->ghash_key, head,
				pmull_ghash_update_p64);

		err = FUNC21(&walk, 0);
	}

	if (err)
		return err;

	FUNC8(req, ctx, dg, tag, req->cryptlen);

	/* copy authtag to end of dst */
	FUNC19(tag, req->dst, req->assoclen + req->cryptlen,
				 FUNC1(aead), 1);

	return 0;
}