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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct scatter_walk {int /*<<< orphan*/  sg; } ;
struct gcm_aes_ctx {int /*<<< orphan*/  ghash_key; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int /*<<< orphan*/  src; scalar_t__ assoclen; } ;

/* Variables and functions */
 int GHASH_BLOCK_SIZE ; 
 struct gcm_aes_ctx* FUNC0 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC1 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int*,struct gcm_aes_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pmull_ghash_update_p64 ; 
 int /*<<< orphan*/  FUNC5 (struct scatter_walk*,scalar_t__) ; 
 scalar_t__ FUNC6 (struct scatter_walk*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct scatter_walk*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC8 (struct scatter_walk*) ; 
 int /*<<< orphan*/  FUNC9 (struct scatter_walk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct aead_request *req, u64 dg[])
{
	struct crypto_aead *aead = FUNC1(req);
	struct gcm_aes_ctx *ctx = FUNC0(aead);
	u8 buf[GHASH_BLOCK_SIZE];
	struct scatter_walk walk;
	u32 len = req->assoclen;
	int buf_count = 0;

	FUNC9(&walk, req->src);

	do {
		u32 n = FUNC6(&walk, len);
		u8 *p;

		if (!n) {
			FUNC9(&walk, FUNC11(walk.sg));
			n = FUNC6(&walk, len);
		}
		p = FUNC8(&walk);

		FUNC2(dg, p, n, buf, &buf_count, ctx);
		len -= n;

		FUNC10(p);
		FUNC5(&walk, n);
		FUNC7(&walk, 0, len);
	} while (len);

	if (buf_count) {
		FUNC4(&buf[buf_count], 0, GHASH_BLOCK_SIZE - buf_count);
		FUNC3(1, dg, buf, &ctx->ghash_key, NULL,
				pmull_ghash_update_p64);
	}
}