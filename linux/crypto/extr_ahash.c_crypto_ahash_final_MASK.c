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
struct crypto_alg {int dummy; } ;
struct TYPE_2__ {struct crypto_alg* __crt_alg; } ;
struct crypto_ahash {int /*<<< orphan*/  final; TYPE_1__ base; } ;
struct ahash_request {unsigned int nbytes; } ;

/* Variables and functions */
 int FUNC0 (struct ahash_request*,int /*<<< orphan*/ ) ; 
 struct crypto_ahash* FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int,struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_alg*) ; 

int FUNC4(struct ahash_request *req)
{
	struct crypto_ahash *tfm = FUNC1(req);
	struct crypto_alg *alg = tfm->base.__crt_alg;
	unsigned int nbytes = req->nbytes;
	int ret;

	FUNC3(alg);
	ret = FUNC0(req, FUNC1(req)->final);
	FUNC2(nbytes, ret, alg);
	return ret;
}