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
struct skcipher_request {int /*<<< orphan*/  iv; int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_2__ {int /*<<< orphan*/  skcipher; } ;
struct essiv_tfm_ctx {TYPE_1__ u; int /*<<< orphan*/  essiv_cipher; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct essiv_tfm_ctx* FUNC1 (struct crypto_skcipher*) ; 
 int FUNC2 (struct skcipher_request*) ; 
 int FUNC3 (struct skcipher_request*) ; 
 struct crypto_skcipher* FUNC4 (struct skcipher_request*) ; 
 int /*<<< orphan*/  essiv_skcipher_done ; 
 struct skcipher_request* FUNC5 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct skcipher_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct skcipher_request *req, bool enc)
{
	struct crypto_skcipher *tfm = FUNC4(req);
	const struct essiv_tfm_ctx *tctx = FUNC1(tfm);
	struct skcipher_request *subreq = FUNC5(req);

	FUNC0(tctx->essiv_cipher, req->iv, req->iv);

	FUNC9(subreq, tctx->u.skcipher);
	FUNC8(subreq, req->src, req->dst, req->cryptlen,
				   req->iv);
	FUNC7(subreq, FUNC6(req),
				      essiv_skcipher_done, req);

	return enc ? FUNC3(subreq) :
		     FUNC2(subreq);
}