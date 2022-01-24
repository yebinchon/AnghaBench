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
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct skcipher_request {int /*<<< orphan*/  iv; int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  dst; TYPE_1__ base; } ;
struct rctx {int /*<<< orphan*/  t; struct skcipher_request subreq; } ;
struct priv {int /*<<< orphan*/  table; int /*<<< orphan*/  child; } ;

/* Variables and functions */
 int /*<<< orphan*/  crypt_done ; 
 struct priv* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct rctx* FUNC4 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct skcipher_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct skcipher_request *req)
{
	struct priv *ctx = FUNC0(FUNC1(req));
	struct rctx *rctx = FUNC4(req);
	struct skcipher_request *subreq = &rctx->subreq;

	FUNC7(subreq, ctx->child);
	FUNC5(subreq, req->base.flags, crypt_done, req);
	/* pass req->iv as IV (will be used by xor_tweak, ECB will ignore it) */
	FUNC6(subreq, req->dst, req->dst,
				   req->cryptlen, req->iv);

	/* calculate first value of T */
	FUNC3(&rctx->t, req->iv, sizeof(rctx->t));

	/* T <- I*Key2 */
	FUNC2(&rctx->t, ctx->table);
}