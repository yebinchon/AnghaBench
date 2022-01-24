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
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  complete; } ;
struct skcipher_request {int /*<<< orphan*/  iv; int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ base; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;
typedef  struct ablkcipher_request ablkcipher_request ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ablkcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ablkcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ablkcipher_request*,struct crypto_ablkcipher*) ; 
 struct crypto_ablkcipher** FUNC3 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC4 (struct skcipher_request*) ; 
 struct ablkcipher_request* FUNC5 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct skcipher_request*) ; 

__attribute__((used)) static int FUNC7(struct skcipher_request *req,
				     int (*crypt)(struct ablkcipher_request *))
{
	struct crypto_skcipher *tfm = FUNC4(req);
	struct crypto_ablkcipher **ctx = FUNC3(tfm);
	struct ablkcipher_request *subreq = FUNC5(req);

	FUNC2(subreq, *ctx);
	FUNC0(subreq, FUNC6(req),
					req->base.complete, req->base.data);
	FUNC1(subreq, req->src, req->dst, req->cryptlen,
				     req->iv);

	return crypt(subreq);
}