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
typedef  int u8 ;
struct scatterlist {int dummy; } ;
struct crypto_ccm_req_priv_ctx {struct scatterlist* dst; struct scatterlist* src; int /*<<< orphan*/  flags; } ;
struct aead_request {int* iv; int /*<<< orphan*/  assoclen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aead_request*) ; 
 int FUNC1 (int*) ; 
 struct crypto_ccm_req_priv_ctx* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 struct scatterlist* FUNC4 (struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*,int,struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*,int*,int) ; 

__attribute__((used)) static int FUNC8(struct aead_request *req, u8 *tag)
{
	struct crypto_ccm_req_priv_ctx *pctx = FUNC2(req);
	struct scatterlist *sg;
	u8 *iv = req->iv;
	int err;

	err = FUNC1(iv);
	if (err)
		return err;

	pctx->flags = FUNC0(req);

	 /* Note: rfc 3610 and NIST 800-38C require counter of
	 * zero to encrypt auth tag.
	 */
	FUNC3(iv + 15 - iv[0], 0, iv[0] + 1);

	FUNC6(pctx->src, 3);
	FUNC7(pctx->src, tag, 16);
	sg = FUNC4(pctx->src + 1, req->src, req->assoclen);
	if (sg != pctx->src + 1)
		FUNC5(pctx->src, 2, sg);

	if (req->src != req->dst) {
		FUNC6(pctx->dst, 3);
		FUNC7(pctx->dst, tag, 16);
		sg = FUNC4(pctx->dst + 1, req->dst, req->assoclen);
		if (sg != pctx->dst + 1)
			FUNC5(pctx->dst, 2, sg);
	}

	return 0;
}