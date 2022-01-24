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
typedef  int /*<<< orphan*/  u32 ;
struct crypto_tfm {int /*<<< orphan*/  exit; struct crypto_alg* __crt_alg; } ;
struct crypto_alg {int (* cra_init ) (struct crypto_tfm*) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 struct crypto_tfm* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct crypto_alg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_tfm*) ; 
 int FUNC3 (struct crypto_tfm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_tfm*) ; 
 struct crypto_tfm* FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct crypto_tfm*) ; 

struct crypto_tfm *FUNC8(struct crypto_alg *alg, u32 type,
				      u32 mask)
{
	struct crypto_tfm *tfm = NULL;
	unsigned int tfm_size;
	int err = -ENOMEM;

	tfm_size = sizeof(*tfm) + FUNC1(alg, type, mask);
	tfm = FUNC6(tfm_size, GFP_KERNEL);
	if (tfm == NULL)
		goto out_err;

	tfm->__crt_alg = alg;

	err = FUNC3(tfm, type, mask);
	if (err)
		goto out_free_tfm;

	if (!tfm->exit && alg->cra_init && (err = alg->cra_init(tfm)))
		goto cra_init_failed;

	goto out;

cra_init_failed:
	FUNC2(tfm);
out_free_tfm:
	if (err == -EAGAIN)
		FUNC4(alg);
	FUNC5(tfm);
out_err:
	tfm = FUNC0(err);
out:
	return tfm;
}