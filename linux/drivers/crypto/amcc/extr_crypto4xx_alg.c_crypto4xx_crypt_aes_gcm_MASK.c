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
struct crypto4xx_ctx {int /*<<< orphan*/  sa_len; int /*<<< orphan*/  sa_out; int /*<<< orphan*/  sa_in; } ;
struct crypto4xx_aead_reqctx {int /*<<< orphan*/  dst; } ;
struct TYPE_2__ {int /*<<< orphan*/  tfm; } ;
struct aead_request {unsigned int cryptlen; int /*<<< orphan*/  assoclen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ base; int /*<<< orphan*/  iv; } ;
typedef  int /*<<< orphan*/  iv ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  GCM_AES_IV_SIZE ; 
 struct crypto4xx_aead_reqctx* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct aead_request*,struct crypto4xx_ctx*,int) ; 
 scalar_t__ FUNC3 (struct aead_request*,unsigned int,int,int) ; 
 int FUNC4 (TYPE_1__*,struct crypto4xx_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct aead_request*) ; 
 struct crypto4xx_ctx* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC9(struct aead_request *req,
					  bool decrypt)
{
	struct crypto4xx_ctx *ctx = FUNC8(req->base.tfm);
	struct crypto4xx_aead_reqctx *rctx = FUNC0(req);
	__le32 iv[4];
	unsigned int len = req->cryptlen;

	if (decrypt)
		len -= FUNC6(FUNC7(req));

	if (FUNC3(req, len, false, decrypt))
		return FUNC2(req, ctx, decrypt);

	FUNC5(iv, req->iv, GCM_AES_IV_SIZE);
	iv[3] = FUNC1(1);

	return FUNC4(&req->base, ctx, req->src, req->dst,
				  len, iv, sizeof(iv),
				  decrypt ? ctx->sa_in : ctx->sa_out,
				  ctx->sa_len, req->assoclen, rctx->dst);
}