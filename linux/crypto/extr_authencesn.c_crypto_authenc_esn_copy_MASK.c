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
struct crypto_authenc_esn_ctx {int /*<<< orphan*/  null; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*) ; 
 struct crypto_authenc_esn_ctx* FUNC2 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC3 (struct aead_request*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  skreq ; 

__attribute__((used)) static int FUNC8(struct aead_request *req, unsigned int len)
{
	struct crypto_aead *authenc_esn = FUNC3(req);
	struct crypto_authenc_esn_ctx *ctx = FUNC2(authenc_esn);
	FUNC0(skreq, ctx->null);

	FUNC7(skreq, ctx->null);
	FUNC5(skreq, FUNC1(req),
				      NULL, NULL);
	FUNC6(skreq, req->src, req->dst, len, NULL);

	return FUNC4(skreq);
}