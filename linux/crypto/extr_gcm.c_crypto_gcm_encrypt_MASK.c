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
typedef  int /*<<< orphan*/  u32 ;
struct skcipher_request {int dummy; } ;
struct TYPE_2__ {struct skcipher_request skreq; } ;
struct crypto_gcm_req_priv_ctx {TYPE_1__ u; } ;
struct aead_request {int /*<<< orphan*/  cryptlen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*,int /*<<< orphan*/ ) ; 
 struct crypto_gcm_req_priv_ctx* FUNC3 (struct aead_request*) ; 
 scalar_t__ FUNC4 (struct skcipher_request*) ; 
 int FUNC5 (struct aead_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gcm_encrypt_done ; 
 int /*<<< orphan*/  FUNC6 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aead_request*) ; 

__attribute__((used)) static int FUNC7(struct aead_request *req)
{
	struct crypto_gcm_req_priv_ctx *pctx = FUNC3(req);
	struct skcipher_request *skreq = &pctx->u.skreq;
	u32 flags = FUNC0(req);

	FUNC1(req);
	FUNC2(req, req->cryptlen);
	FUNC6(skreq, flags, gcm_encrypt_done, req);

	return FUNC4(skreq) ?:
	       FUNC5(req, flags);
}