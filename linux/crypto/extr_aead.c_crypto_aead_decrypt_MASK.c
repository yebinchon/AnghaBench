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
struct crypto_alg {int dummy; } ;
struct TYPE_3__ {struct crypto_alg* __crt_alg; } ;
struct crypto_aead {TYPE_1__ base; } ;
struct aead_request {unsigned int cryptlen; } ;
struct TYPE_4__ {int (* decrypt ) (struct aead_request*) ;} ;

/* Variables and functions */
 int CRYPTO_TFM_NEED_KEY ; 
 int EINVAL ; 
 int ENOKEY ; 
 TYPE_2__* FUNC0 (struct crypto_aead*) ; 
 scalar_t__ FUNC1 (struct crypto_aead*) ; 
 int FUNC2 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC3 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,struct crypto_alg*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_alg*) ; 
 int FUNC6 (struct aead_request*) ; 

int FUNC7(struct aead_request *req)
{
	struct crypto_aead *aead = FUNC3(req);
	struct crypto_alg *alg = aead->base.__crt_alg;
	unsigned int cryptlen = req->cryptlen;
	int ret;

	FUNC5(alg);
	if (FUNC2(aead) & CRYPTO_TFM_NEED_KEY)
		ret = -ENOKEY;
	else if (req->cryptlen < FUNC1(aead))
		ret = -EINVAL;
	else
		ret = FUNC0(aead)->decrypt(req);
	FUNC4(cryptlen, alg, ret);
	return ret;
}