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
struct sk_buff {int dummy; } ;
struct crypto_user_alg {int cru_flags; int /*<<< orphan*/  type; int /*<<< orphan*/  cru_refcnt; scalar_t__ cru_mask; scalar_t__ cru_type; int /*<<< orphan*/  cru_module_name; int /*<<< orphan*/  cru_driver_name; int /*<<< orphan*/  cru_name; } ;
struct crypto_report_larval {int cru_flags; int /*<<< orphan*/  type; int /*<<< orphan*/  cru_refcnt; scalar_t__ cru_mask; scalar_t__ cru_type; int /*<<< orphan*/  cru_module_name; int /*<<< orphan*/  cru_driver_name; int /*<<< orphan*/  cru_name; } ;
struct crypto_alg {char* cra_name; char* cra_driver_name; int cra_flags; TYPE_1__* cra_type; int /*<<< orphan*/  cra_priority; int /*<<< orphan*/  cra_refcnt; int /*<<< orphan*/  cra_module; } ;
typedef  int /*<<< orphan*/  rl ;
struct TYPE_2__ {scalar_t__ (* report ) (struct sk_buff*,struct crypto_alg*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTOCFGA_PRIORITY_VAL ; 
 int /*<<< orphan*/  CRYPTOCFGA_REPORT_LARVAL ; 
 int CRYPTO_ALG_LARVAL ; 
#define  CRYPTO_ALG_TYPE_CIPHER 129 
#define  CRYPTO_ALG_TYPE_COMPRESS 128 
 int CRYPTO_ALG_TYPE_MASK ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_user_alg*,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int,struct crypto_user_alg*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC8 (struct sk_buff*,struct crypto_alg*) ; 

__attribute__((used)) static int FUNC9(struct crypto_alg *alg,
			     struct crypto_user_alg *ualg, struct sk_buff *skb)
{
	FUNC2(ualg, 0, sizeof(*ualg));

	FUNC7(ualg->cru_name, alg->cra_name, sizeof(ualg->cru_name));
	FUNC7(ualg->cru_driver_name, alg->cra_driver_name,
		sizeof(ualg->cru_driver_name));
	FUNC7(ualg->cru_module_name, FUNC3(alg->cra_module),
		sizeof(ualg->cru_module_name));

	ualg->cru_type = 0;
	ualg->cru_mask = 0;
	ualg->cru_flags = alg->cra_flags;
	ualg->cru_refcnt = FUNC6(&alg->cra_refcnt);

	if (FUNC5(skb, CRYPTOCFGA_PRIORITY_VAL, alg->cra_priority))
		goto nla_put_failure;
	if (alg->cra_flags & CRYPTO_ALG_LARVAL) {
		struct crypto_report_larval rl;

		FUNC2(&rl, 0, sizeof(rl));
		FUNC7(rl.type, "larval", sizeof(rl.type));
		if (FUNC4(skb, CRYPTOCFGA_REPORT_LARVAL, sizeof(rl), &rl))
			goto nla_put_failure;
		goto out;
	}

	if (alg->cra_type && alg->cra_type->report) {
		if (alg->cra_type->report(skb, alg))
			goto nla_put_failure;

		goto out;
	}

	switch (alg->cra_flags & (CRYPTO_ALG_TYPE_MASK | CRYPTO_ALG_LARVAL)) {
	case CRYPTO_ALG_TYPE_CIPHER:
		if (FUNC0(skb, alg))
			goto nla_put_failure;

		break;
	case CRYPTO_ALG_TYPE_COMPRESS:
		if (FUNC1(skb, alg))
			goto nla_put_failure;

		break;
	}

out:
	return 0;

nla_put_failure:
	return -EMSGSIZE;
}