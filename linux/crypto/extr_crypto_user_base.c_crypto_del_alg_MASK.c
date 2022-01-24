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
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct crypto_user_alg {int /*<<< orphan*/  cru_driver_name; int /*<<< orphan*/  cru_name; } ;
struct crypto_instance {int dummy; } ;
struct crypto_alg {int cra_flags; int /*<<< orphan*/  cra_refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int CRYPTO_ALG_INSTANCE ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOENT ; 
 int EPERM ; 
 struct crypto_alg* FUNC0 (struct crypto_user_alg*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_alg*) ; 
 int FUNC2 (struct crypto_instance*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct crypto_user_alg* FUNC4 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct nlmsghdr *nlh,
			  struct nlattr **attrs)
{
	struct crypto_alg *alg;
	struct crypto_user_alg *p = FUNC4(nlh);
	int err;

	if (!FUNC3(skb, CAP_NET_ADMIN))
		return -EPERM;

	if (!FUNC5(p->cru_name) || !FUNC5(p->cru_driver_name))
		return -EINVAL;

	alg = FUNC0(p, 1);
	if (!alg)
		return -ENOENT;

	/* We can not unregister core algorithms such as aes-generic.
	 * We would loose the reference in the crypto_alg_list to this algorithm
	 * if we try to unregister. Unregistering such an algorithm without
	 * removing the module is not possible, so we restrict to crypto
	 * instances that are build from templates. */
	err = -EINVAL;
	if (!(alg->cra_flags & CRYPTO_ALG_INSTANCE))
		goto drop_alg;

	err = -EBUSY;
	if (FUNC6(&alg->cra_refcnt) > 2)
		goto drop_alg;

	err = FUNC2((struct crypto_instance *)alg);

drop_alg:
	FUNC1(alg);
	return err;
}