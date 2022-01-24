#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct crypto_aead {int dummy; } ;
struct chacha_req {int /*<<< orphan*/  req; int /*<<< orphan*/  iv; int /*<<< orphan*/  src; } ;
struct TYPE_2__ {struct chacha_req chacha; } ;
struct chachapoly_req_ctx {int assoclen; int /*<<< orphan*/  flags; int /*<<< orphan*/  key; TYPE_1__ u; } ;
struct chachapoly_ctx {int /*<<< orphan*/  chacha; } ;
struct aead_request {int assoclen; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  POLY1305_KEY_SIZE ; 
 struct chachapoly_req_ctx* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct aead_request*,int /*<<< orphan*/ ) ; 
 struct chachapoly_ctx* FUNC2 (struct crypto_aead*) ; 
 int FUNC3 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC4 (struct aead_request*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  poly_genkey_done ; 
 int FUNC7 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct aead_request *req)
{
	struct crypto_aead *tfm = FUNC4(req);
	struct chachapoly_ctx *ctx = FUNC2(tfm);
	struct chachapoly_req_ctx *rctx = FUNC0(req);
	struct chacha_req *creq = &rctx->u.chacha;
	int err;

	rctx->assoclen = req->assoclen;

	if (FUNC3(tfm) == 8) {
		if (rctx->assoclen < 8)
			return -EINVAL;
		rctx->assoclen -= 8;
	}

	FUNC6(rctx->key, 0, sizeof(rctx->key));
	FUNC8(creq->src, rctx->key, sizeof(rctx->key));

	FUNC1(creq->iv, req, 0);

	FUNC9(&creq->req, rctx->flags,
				      poly_genkey_done, req);
	FUNC11(&creq->req, ctx->chacha);
	FUNC10(&creq->req, creq->src, creq->src,
				   POLY1305_KEY_SIZE, creq->iv);

	err = FUNC5(&creq->req);
	if (err)
		return err;

	return FUNC7(req);
}