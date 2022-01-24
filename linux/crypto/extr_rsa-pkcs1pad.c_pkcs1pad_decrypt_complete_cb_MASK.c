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
struct crypto_async_request {int /*<<< orphan*/  flags; int /*<<< orphan*/  tfm; struct akcipher_request* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* complete ) (struct crypto_async_request*,int /*<<< orphan*/ ) ;struct akcipher_request* data; } ;
struct akcipher_request {TYPE_1__ base; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct akcipher_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct akcipher_request*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_async_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(
		struct crypto_async_request *child_async_req, int err)
{
	struct akcipher_request *req = child_async_req->data;
	struct crypto_async_request async_req;

	if (err == -EINPROGRESS)
		return;

	async_req.data = req->base.data;
	async_req.tfm = FUNC1(FUNC0(req));
	async_req.flags = child_async_req->flags;
	req->base.complete(&async_req, FUNC2(req, err));
}