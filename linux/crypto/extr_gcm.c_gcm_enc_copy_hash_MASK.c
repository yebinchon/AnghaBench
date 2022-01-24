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
typedef  int /*<<< orphan*/  u32 ;
struct crypto_gcm_req_priv_ctx {int /*<<< orphan*/  iauth_tag; int /*<<< orphan*/ * auth_tag; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {scalar_t__ cryptlen; scalar_t__ assoclen; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC1 (struct aead_request*) ; 
 struct crypto_gcm_req_priv_ctx* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct aead_request *req, u32 flags)
{
	struct crypto_gcm_req_priv_ctx *pctx = FUNC2(req);
	struct crypto_aead *aead = FUNC1(req);
	u8 *auth_tag = pctx->auth_tag;

	FUNC3(auth_tag, pctx->iauth_tag, 16);
	FUNC4(auth_tag, req->dst,
				 req->assoclen + req->cryptlen,
				 FUNC0(aead), 1);
	return 0;
}