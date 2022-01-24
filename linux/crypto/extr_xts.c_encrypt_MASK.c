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
struct skcipher_request {int cryptlen; } ;
struct rctx {struct skcipher_request subreq; } ;

/* Variables and functions */
 int XTS_BLOCK_SIZE ; 
 scalar_t__ FUNC0 (struct skcipher_request*) ; 
 int FUNC1 (struct skcipher_request*,scalar_t__ (*) (struct skcipher_request*)) ; 
 int /*<<< orphan*/  encrypt_done ; 
 scalar_t__ FUNC2 (struct skcipher_request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 struct rctx* FUNC4 (struct skcipher_request*) ; 
 int FUNC5 (struct skcipher_request*,int) ; 
 scalar_t__ FUNC6 (struct skcipher_request*,int) ; 

__attribute__((used)) static int FUNC7(struct skcipher_request *req)
{
	struct rctx *rctx = FUNC4(req);
	struct skcipher_request *subreq = &rctx->subreq;
	int err;

	err = FUNC2(req, encrypt_done) ?:
	      FUNC6(req, true) ?:
	      FUNC0(subreq) ?:
	      FUNC5(req, true);

	if (err || FUNC3((req->cryptlen % XTS_BLOCK_SIZE) == 0))
		return err;

	return FUNC1(req, crypto_skcipher_encrypt);
}