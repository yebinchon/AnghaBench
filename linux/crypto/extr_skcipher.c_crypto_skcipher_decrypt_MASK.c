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
struct skcipher_request {unsigned int cryptlen; } ;
struct TYPE_2__ {struct crypto_alg* __crt_alg; } ;
struct crypto_skcipher {int (* decrypt ) (struct skcipher_request*) ;TYPE_1__ base; } ;
struct crypto_alg {int dummy; } ;

/* Variables and functions */
 int CRYPTO_TFM_NEED_KEY ; 
 int ENOKEY ; 
 int FUNC0 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC1 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int,struct crypto_alg*) ; 
 int FUNC4 (struct skcipher_request*) ; 

int FUNC5(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC1(req);
	struct crypto_alg *alg = tfm->base.__crt_alg;
	unsigned int cryptlen = req->cryptlen;
	int ret;

	FUNC2(alg);
	if (FUNC0(tfm) & CRYPTO_TFM_NEED_KEY)
		ret = -ENOKEY;
	else
		ret = tfm->decrypt(req);
	FUNC3(cryptlen, ret, alg);
	return ret;
}