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
struct poly_req {int /*<<< orphan*/  req; } ;
struct TYPE_2__ {struct poly_req poly; } ;
struct chachapoly_req_ctx {int /*<<< orphan*/  flags; TYPE_1__ u; } ;
struct chachapoly_ctx {int /*<<< orphan*/  poly; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 struct chachapoly_req_ctx* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct chachapoly_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aead_request*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  poly_init_done ; 
 int FUNC6 (struct aead_request*) ; 

__attribute__((used)) static int FUNC7(struct aead_request *req)
{
	struct chachapoly_ctx *ctx = FUNC3(FUNC4(req));
	struct chachapoly_req_ctx *rctx = FUNC0(req);
	struct poly_req *preq = &rctx->u.poly;
	int err;

	FUNC1(&preq->req, rctx->flags,
				   poly_init_done, req);
	FUNC2(&preq->req, ctx->poly);

	err = FUNC5(&preq->req);
	if (err)
		return err;

	return FUNC6(req);
}