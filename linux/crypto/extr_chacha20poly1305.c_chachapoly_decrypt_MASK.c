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
struct chachapoly_req_ctx {int /*<<< orphan*/  flags; scalar_t__ cryptlen; } ;
struct aead_request {scalar_t__ cryptlen; } ;

/* Variables and functions */
 scalar_t__ POLY1305_DIGEST_SIZE ; 
 struct chachapoly_req_ctx* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*) ; 
 int FUNC2 (struct aead_request*) ; 

__attribute__((used)) static int FUNC3(struct aead_request *req)
{
	struct chachapoly_req_ctx *rctx = FUNC0(req);

	rctx->cryptlen = req->cryptlen - POLY1305_DIGEST_SIZE;
	rctx->flags = FUNC1(req);

	/* decrypt call chain:
	 * - poly_genkey/done()
	 * - poly_init/done()
	 * - poly_setkey/done()
	 * - poly_ad/done()
	 * - poly_adpad/done()
	 * - poly_cipher/done()
	 * - poly_cipherpad/done()
	 * - poly_tail/done/continue()
	 * - chacha_decrypt/done()
	 * - poly_verify_tag()
	 */
	return FUNC2(req);
}