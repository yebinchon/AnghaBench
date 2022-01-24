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
struct skcipher_request {int dummy; } ;
struct rctx {struct skcipher_request subreq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct skcipher_request*) ; 
 struct rctx* FUNC2 (struct skcipher_request*) ; 
 int FUNC3 (struct skcipher_request*) ; 
 scalar_t__ FUNC4 (struct skcipher_request*) ; 

__attribute__((used)) static int FUNC5(struct skcipher_request *req)
{
	struct rctx *rctx = FUNC2(req);
	struct skcipher_request *subreq = &rctx->subreq;

	FUNC1(req);
	return FUNC4(req) ?:
		FUNC0(subreq) ?:
		FUNC3(req);
}