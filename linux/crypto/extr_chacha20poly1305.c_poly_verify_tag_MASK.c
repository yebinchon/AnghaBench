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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  tag ;
struct chachapoly_req_ctx {int /*<<< orphan*/  tag; scalar_t__ cryptlen; } ;
struct aead_request {scalar_t__ assoclen; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int EBADMSG ; 
 struct chachapoly_req_ctx* FUNC0 (struct aead_request*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct aead_request *req)
{
	struct chachapoly_req_ctx *rctx = FUNC0(req);
	u8 tag[sizeof(rctx->tag)];

	FUNC2(tag, req->src,
				 req->assoclen + rctx->cryptlen,
				 sizeof(tag), 0);
	if (FUNC1(tag, rctx->tag, sizeof(tag)))
		return -EBADMSG;
	return 0;
}