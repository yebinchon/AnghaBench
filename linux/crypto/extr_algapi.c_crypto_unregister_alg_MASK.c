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
struct crypto_alg {int /*<<< orphan*/  (* cra_destroy ) (struct crypto_alg*) ;int /*<<< orphan*/  cra_refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  crypto_alg_sem ; 
 int FUNC2 (struct crypto_alg*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct crypto_alg *alg)
{
	int ret;
	FUNC1(list);

	FUNC4(&crypto_alg_sem);
	ret = FUNC2(alg, &list);
	FUNC7(&crypto_alg_sem);

	if (ret)
		return ret;

	FUNC0(FUNC5(&alg->cra_refcnt) != 1);
	if (alg->cra_destroy)
		alg->cra_destroy(alg);

	FUNC3(&list);
	return 0;
}