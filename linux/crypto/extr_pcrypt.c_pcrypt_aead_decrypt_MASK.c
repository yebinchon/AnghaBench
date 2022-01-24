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
typedef  int u32 ;
struct pcrypt_request {int dummy; } ;
struct pcrypt_aead_ctx {int /*<<< orphan*/  cb_cpu; int /*<<< orphan*/  child; } ;
struct padata_priv {int /*<<< orphan*/  serial; int /*<<< orphan*/  parallel; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int /*<<< orphan*/  assoclen; int /*<<< orphan*/  iv; int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int EINPROGRESS ; 
 struct pcrypt_request* FUNC0 (struct aead_request*) ; 
 int FUNC1 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*,int,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct aead_request*,int /*<<< orphan*/ ) ; 
 struct pcrypt_aead_ctx* FUNC6 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC7 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct padata_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct padata_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pcrypt_aead_dec ; 
 int /*<<< orphan*/  pcrypt_aead_done ; 
 int /*<<< orphan*/  pcrypt_aead_serial ; 
 struct aead_request* FUNC10 (struct pcrypt_request*) ; 
 struct padata_priv* FUNC11 (struct pcrypt_request*) ; 
 int /*<<< orphan*/  pdecrypt ; 

__attribute__((used)) static int FUNC12(struct aead_request *req)
{
	int err;
	struct pcrypt_request *preq = FUNC0(req);
	struct aead_request *creq = FUNC10(preq);
	struct padata_priv *padata = FUNC11(preq);
	struct crypto_aead *aead = FUNC7(req);
	struct pcrypt_aead_ctx *ctx = FUNC6(aead);
	u32 flags = FUNC1(req);

	FUNC8(padata, 0, sizeof(struct padata_priv));

	padata->parallel = pcrypt_aead_dec;
	padata->serial = pcrypt_aead_serial;

	FUNC5(creq, ctx->child);
	FUNC3(creq, flags & ~CRYPTO_TFM_REQ_MAY_SLEEP,
				  pcrypt_aead_done, req);
	FUNC4(creq, req->src, req->dst,
			       req->cryptlen, req->iv);
	FUNC2(creq, req->assoclen);

	err = FUNC9(pdecrypt, padata, &ctx->cb_cpu);
	if (!err)
		return -EINPROGRESS;

	return err;
}