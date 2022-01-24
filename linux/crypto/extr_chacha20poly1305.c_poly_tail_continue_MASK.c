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
struct chachapoly_req_ctx {scalar_t__ cryptlen; } ;
struct aead_request {scalar_t__ cryptlen; } ;

/* Variables and functions */
 struct chachapoly_req_ctx* FUNC0 (struct aead_request*) ; 
 int FUNC1 (struct aead_request*) ; 
 int FUNC2 (struct aead_request*) ; 

__attribute__((used)) static int FUNC3(struct aead_request *req)
{
	struct chachapoly_req_ctx *rctx = FUNC0(req);

	if (rctx->cryptlen == req->cryptlen) /* encrypting */
		return FUNC2(req);

	return FUNC1(req);
}