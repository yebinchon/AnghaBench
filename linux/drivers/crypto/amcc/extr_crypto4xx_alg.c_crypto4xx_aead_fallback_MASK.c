#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  aead; } ;
struct crypto4xx_ctx {TYPE_1__ sw_cipher; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; int /*<<< orphan*/  complete; int /*<<< orphan*/  flags; } ;
struct aead_request {int /*<<< orphan*/  assoclen; int /*<<< orphan*/  iv; int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_2__ base; } ;

/* Variables and functions */
 struct aead_request* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aead_request*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct aead_request*) ; 
 int FUNC6 (struct aead_request*) ; 

__attribute__((used)) static int FUNC7(struct aead_request *req,
	struct crypto4xx_ctx *ctx, bool do_decrypt)
{
	struct aead_request *subreq = FUNC0(req);

	FUNC4(subreq, ctx->sw_cipher.aead);
	FUNC2(subreq, req->base.flags,
				  req->base.complete, req->base.data);
	FUNC3(subreq, req->src, req->dst, req->cryptlen,
			       req->iv);
	FUNC1(subreq, req->assoclen);
	return do_decrypt ? FUNC5(subreq) :
			    FUNC6(subreq);
}