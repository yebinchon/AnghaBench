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
struct crypto_akcipher {TYPE_1__ base; } ;
struct akcipher_alg {int (* init ) (struct crypto_akcipher*) ;scalar_t__ exit; } ;

/* Variables and functions */
 struct crypto_akcipher* FUNC0 (struct crypto_tfm*) ; 
 struct akcipher_alg* FUNC1 (struct crypto_akcipher*) ; 
 int /*<<< orphan*/  crypto_akcipher_exit_tfm ; 
 int FUNC2 (struct crypto_akcipher*) ; 

__attribute__((used)) static int FUNC3(struct crypto_tfm *tfm)
{
	struct crypto_akcipher *akcipher = FUNC0(tfm);
	struct akcipher_alg *alg = FUNC1(akcipher);

	if (alg->exit)
		akcipher->base.exit = crypto_akcipher_exit_tfm;

	if (alg->init)
		return alg->init(akcipher);

	return 0;
}