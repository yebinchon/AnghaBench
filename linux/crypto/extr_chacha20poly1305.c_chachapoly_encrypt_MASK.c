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
struct chachapoly_req_ctx {int /*<<< orphan*/  flags; int /*<<< orphan*/  cryptlen; } ;
struct aead_request {int /*<<< orphan*/  cryptlen; } ;

/* Variables and functions */
 struct chachapoly_req_ctx* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*) ; 
 int FUNC2 (struct aead_request*) ; 

__attribute__((used)) static int FUNC3(struct aead_request *req)
{
	struct chachapoly_req_ctx *rctx = FUNC0(req);

	rctx->cryptlen = req->cryptlen;
	rctx->flags = FUNC1(req);

	/* encrypt call chain:
	 * - chacha_encrypt/done()
	 * - poly_genkey/done()
	 * - poly_init/done()
	 * - poly_setkey/done()
	 * - poly_ad/done()
	 * - poly_adpad/done()
	 * - poly_cipher/done()
	 * - poly_cipherpad/done()
	 * - poly_tail/done/continue()
	 * - poly_copy_tag()
	 */
	return FUNC2(req);
}