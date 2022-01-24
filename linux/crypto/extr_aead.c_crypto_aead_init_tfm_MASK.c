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
struct crypto_tfm {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  exit; } ;
struct crypto_aead {TYPE_1__ base; int /*<<< orphan*/  authsize; } ;
struct aead_alg {int (* init ) (struct crypto_aead*) ;scalar_t__ exit; int /*<<< orphan*/  maxauthsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_NEED_KEY ; 
 struct crypto_aead* FUNC0 (struct crypto_tfm*) ; 
 struct aead_alg* FUNC1 (struct crypto_aead*) ; 
 int /*<<< orphan*/  crypto_aead_exit_tfm ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_aead*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct crypto_aead*) ; 

__attribute__((used)) static int FUNC4(struct crypto_tfm *tfm)
{
	struct crypto_aead *aead = FUNC0(tfm);
	struct aead_alg *alg = FUNC1(aead);

	FUNC2(aead, CRYPTO_TFM_NEED_KEY);

	aead->authsize = alg->maxauthsize;

	if (alg->exit)
		aead->base.exit = crypto_aead_exit_tfm;

	if (alg->init)
		return alg->init(aead);

	return 0;
}