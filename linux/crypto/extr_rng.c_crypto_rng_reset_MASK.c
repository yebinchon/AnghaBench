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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {struct crypto_alg* __crt_alg; } ;
struct crypto_rng {TYPE_1__ base; } ;
struct crypto_alg {int dummy; } ;
struct TYPE_4__ {int (* seed ) (struct crypto_rng*,int /*<<< orphan*/  const*,unsigned int) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_2__* FUNC0 (struct crypto_rng*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_alg*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/ * FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct crypto_rng*,int /*<<< orphan*/  const*,unsigned int) ; 

int FUNC7(struct crypto_rng *tfm, const u8 *seed, unsigned int slen)
{
	struct crypto_alg *alg = tfm->base.__crt_alg;
	u8 *buf = NULL;
	int err;

	FUNC1(alg);
	if (!seed && slen) {
		buf = FUNC4(slen, GFP_KERNEL);
		if (!buf)
			return -ENOMEM;

		err = FUNC3(buf, slen);
		if (err)
			goto out;
		seed = buf;
	}

	err = FUNC0(tfm)->seed(tfm, seed, slen);
	FUNC2(alg, err);
out:
	FUNC5(buf);
	return err;
}