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
struct crypto_ahash {int /*<<< orphan*/  digest; TYPE_1__ base; } ;
struct ahash_request {unsigned int nbytes; } ;

/* Variables and functions */
 int CRYPTO_TFM_NEED_KEY ; 
 int ENOKEY ; 
 int FUNC0 (struct crypto_ahash*) ; 
 int FUNC1 (struct ahash_request*,int /*<<< orphan*/ ) ; 
 struct crypto_ahash* FUNC2 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int,struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_alg*) ; 

int FUNC5(struct ahash_request *req)
{
	struct crypto_ahash *tfm = FUNC2(req);
	struct crypto_alg *alg = tfm->base.__crt_alg;
	unsigned int nbytes = req->nbytes;
	int ret;

	FUNC4(alg);
	if (FUNC0(tfm) & CRYPTO_TFM_NEED_KEY)
		ret = -ENOKEY;
	else
		ret = FUNC1(req, tfm->digest);
	FUNC3(nbytes, ret, alg);
	return ret;
}