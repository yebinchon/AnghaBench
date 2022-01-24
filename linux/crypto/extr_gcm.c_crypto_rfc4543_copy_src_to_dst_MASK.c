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
struct crypto_rfc4543_ctx {int /*<<< orphan*/  null; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct aead_request {unsigned int assoclen; unsigned int cryptlen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct crypto_aead*) ; 
 struct crypto_rfc4543_ctx* FUNC2 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC3 (struct aead_request*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nreq ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct aead_request *req, bool enc)
{
	struct crypto_aead *aead = FUNC3(req);
	struct crypto_rfc4543_ctx *ctx = FUNC2(aead);
	unsigned int authsize = FUNC1(aead);
	unsigned int nbytes = req->assoclen + req->cryptlen -
			      (enc ? 0 : authsize);
	FUNC0(nreq, ctx->null);

	FUNC7(nreq, ctx->null);
	FUNC5(nreq, req->base.flags, NULL, NULL);
	FUNC6(nreq, req->src, req->dst, nbytes, NULL);

	return FUNC4(nreq);
}