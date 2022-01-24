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
struct crypto_alg {int /*<<< orphan*/  cra_priority; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 size_t CRYPTOCFGA_PRIORITY_VAL ; 
 int EINVAL ; 
 int ENOENT ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct crypto_alg* FUNC1 (struct crypto_user_alg*,int) ; 
 int /*<<< orphan*/  crypto_alg_sem ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_alg*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr*) ; 
 struct crypto_user_alg* FUNC8 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, struct nlmsghdr *nlh,
			     struct nlattr **attrs)
{
	struct crypto_alg *alg;
	struct crypto_user_alg *p = FUNC8(nlh);
	struct nlattr *priority = attrs[CRYPTOCFGA_PRIORITY_VAL];
	FUNC0(list);

	if (!FUNC6(skb, CAP_NET_ADMIN))
		return -EPERM;

	if (!FUNC9(p->cru_name) || !FUNC9(p->cru_driver_name))
		return -EINVAL;

	if (priority && !FUNC10(p->cru_driver_name))
		return -EINVAL;

	alg = FUNC1(p, 1);
	if (!alg)
		return -ENOENT;

	FUNC5(&crypto_alg_sem);

	FUNC4(alg, &list, NULL);

	if (priority)
		alg->cra_priority = FUNC7(priority);

	FUNC11(&crypto_alg_sem);

	FUNC2(alg);
	FUNC3(&list);

	return 0;
}