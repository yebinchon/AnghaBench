#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct crypto_template {int /*<<< orphan*/  instances; int /*<<< orphan*/  module; } ;
struct crypto_larval {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  cra_flags; int /*<<< orphan*/  cra_module; } ;
struct crypto_instance {struct crypto_template* tmpl; int /*<<< orphan*/  list; TYPE_1__ alg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_INSTANCE ; 
 scalar_t__ FUNC0 (struct crypto_larval*) ; 
 int FUNC1 (struct crypto_larval*) ; 
 struct crypto_larval* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  crypto_alg_sem ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_larval*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct crypto_template *tmpl,
			     struct crypto_instance *inst)
{
	struct crypto_larval *larval;
	int err;

	err = FUNC3(&inst->alg);
	if (err)
		return err;

	inst->alg.cra_module = tmpl->module;
	inst->alg.cra_flags |= CRYPTO_ALG_INSTANCE;

	FUNC5(&crypto_alg_sem);

	larval = FUNC2(&inst->alg);
	if (FUNC0(larval))
		goto unlock;

	FUNC6(&inst->list, &tmpl->instances);
	inst->tmpl = tmpl;

unlock:
	FUNC7(&crypto_alg_sem);

	err = FUNC1(larval);
	if (FUNC0(larval))
		goto err;

	FUNC4(larval);
	err = 0;

err:
	return err;
}