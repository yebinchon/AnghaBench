#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_8__ {int crypto_mode9_8; } ;
struct TYPE_9__ {TYPE_3__ bf; } ;
struct TYPE_6__ {int digest_len; } ;
struct TYPE_7__ {TYPE_1__ bf; } ;
struct dynamic_sa_ctl {TYPE_4__ sa_command_1; TYPE_2__ sa_command_0; } ;
struct crypto_aead {int dummy; } ;
struct crypto4xx_ctx {int sa_len; int /*<<< orphan*/  sa_out; int /*<<< orphan*/  sa_in; } ;
struct crypto4xx_aead_reqctx {int /*<<< orphan*/  dst; } ;
struct TYPE_10__ {int /*<<< orphan*/  tfm; } ;
struct aead_request {unsigned int cryptlen; int* iv; int /*<<< orphan*/  assoclen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_5__ base; } ;
typedef  int /*<<< orphan*/  iv ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  SA_AES128_CCM_LEN ; 
 struct crypto4xx_aead_reqctx* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct aead_request*,struct crypto4xx_ctx*,int) ; 
 scalar_t__ FUNC3 (struct aead_request*,unsigned int,int,int) ; 
 int FUNC4 (TYPE_5__*,struct crypto4xx_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int,struct dynamic_sa_ctl*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC6 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC7 (struct aead_request*) ; 
 struct crypto4xx_ctx* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct aead_request *req, bool decrypt)
{
	struct crypto4xx_ctx *ctx  = FUNC8(req->base.tfm);
	struct crypto4xx_aead_reqctx *rctx = FUNC0(req);
	struct crypto_aead *aead = FUNC7(req);
	__le32 iv[16];
	u32 tmp_sa[SA_AES128_CCM_LEN + 4];
	struct dynamic_sa_ctl *sa = (struct dynamic_sa_ctl *)tmp_sa;
	unsigned int len = req->cryptlen;

	if (decrypt)
		len -= FUNC6(aead);

	if (FUNC3(req, len, true, decrypt))
		return FUNC2(req, ctx, decrypt);

	FUNC9(tmp_sa, decrypt ? ctx->sa_in : ctx->sa_out, ctx->sa_len * 4);
	sa->sa_command_0.bf.digest_len = FUNC6(aead) >> 2;

	if (req->iv[0] == 1) {
		/* CRYPTO_MODE_AES_ICM */
		sa->sa_command_1.bf.crypto_mode9_8 = 1;
	}

	iv[3] = FUNC1(0);
	FUNC5(iv, req->iv, 16 - (req->iv[0] + 1));

	return FUNC4(&req->base, ctx, req->src, req->dst,
				  len, iv, sizeof(iv),
				  sa, ctx->sa_len, req->assoclen, rctx->dst);
}