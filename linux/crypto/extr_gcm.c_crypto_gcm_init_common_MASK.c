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
struct scatterlist {int dummy; } ;
struct crypto_gcm_req_priv_ctx {int iv; struct scatterlist* dst; int /*<<< orphan*/  auth_tag; struct scatterlist* src; } ;
struct aead_request {int /*<<< orphan*/  assoclen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/ * iv; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int GCM_AES_IV_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct crypto_gcm_req_priv_ctx* FUNC1 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct scatterlist* FUNC4 (struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*,int,struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct aead_request *req)
{
	struct crypto_gcm_req_priv_ctx *pctx = FUNC1(req);
	__be32 counter = FUNC0(1);
	struct scatterlist *sg;

	FUNC3(pctx->auth_tag, 0, sizeof(pctx->auth_tag));
	FUNC2(pctx->iv, req->iv, GCM_AES_IV_SIZE);
	FUNC2(pctx->iv + GCM_AES_IV_SIZE, &counter, 4);

	FUNC6(pctx->src, 3);
	FUNC7(pctx->src, pctx->auth_tag, sizeof(pctx->auth_tag));
	sg = FUNC4(pctx->src + 1, req->src, req->assoclen);
	if (sg != pctx->src + 1)
		FUNC5(pctx->src, 2, sg);

	if (req->src != req->dst) {
		FUNC6(pctx->dst, 3);
		FUNC7(pctx->dst, pctx->auth_tag, sizeof(pctx->auth_tag));
		sg = FUNC4(pctx->dst + 1, req->dst, req->assoclen);
		if (sg != pctx->dst + 1)
			FUNC5(pctx->dst, 2, sg);
	}
}