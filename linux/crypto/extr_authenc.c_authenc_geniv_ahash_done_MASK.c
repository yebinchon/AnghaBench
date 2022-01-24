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
struct crypto_async_request {struct aead_request* data; } ;
struct crypto_aead {int dummy; } ;
struct authenc_request_ctx {scalar_t__ tail; } ;
struct authenc_instance_ctx {scalar_t__ reqoff; } ;
struct ahash_request {int /*<<< orphan*/  result; } ;
struct aead_request {scalar_t__ cryptlen; scalar_t__ assoclen; int /*<<< orphan*/  dst; } ;
struct aead_instance {int dummy; } ;

/* Variables and functions */
 struct aead_instance* FUNC0 (struct crypto_aead*) ; 
 struct authenc_instance_ctx* FUNC1 (struct aead_instance*) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*,int) ; 
 struct authenc_request_ctx* FUNC3 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC5 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct crypto_async_request *areq, int err)
{
	struct aead_request *req = areq->data;
	struct crypto_aead *authenc = FUNC5(req);
	struct aead_instance *inst = FUNC0(authenc);
	struct authenc_instance_ctx *ictx = FUNC1(inst);
	struct authenc_request_ctx *areq_ctx = FUNC3(req);
	struct ahash_request *ahreq = (void *)(areq_ctx->tail + ictx->reqoff);

	if (err)
		goto out;

	FUNC6(ahreq->result, req->dst,
				 req->assoclen + req->cryptlen,
				 FUNC4(authenc), 1);

out:
	FUNC2(req, err);
}