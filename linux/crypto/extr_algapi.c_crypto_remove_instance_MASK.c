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
struct list_head {int dummy; } ;
struct crypto_template {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cra_users; int /*<<< orphan*/  cra_destroy; int /*<<< orphan*/  cra_list; int /*<<< orphan*/  cra_flags; } ;
struct crypto_instance {TYPE_1__ alg; int /*<<< orphan*/  list; struct crypto_template* tmpl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CRYPTO_ALG_DEAD ; 
 int /*<<< orphan*/  crypto_destroy_instance ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_template*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static void FUNC7(struct crypto_instance *inst,
				   struct list_head *list)
{
	struct crypto_template *tmpl = inst->tmpl;

	if (FUNC1(&inst->alg))
		return;

	inst->alg.cra_flags |= CRYPTO_ALG_DEAD;
	if (FUNC4(&inst->list))
		return;

	if (!tmpl || !FUNC2(tmpl))
		return;

	FUNC6(&inst->alg.cra_list, list);
	FUNC3(&inst->list);
	inst->alg.cra_destroy = crypto_destroy_instance;

	FUNC0(!FUNC5(&inst->alg.cra_users));
}