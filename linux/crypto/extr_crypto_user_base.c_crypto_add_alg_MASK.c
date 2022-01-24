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
struct crypto_user_alg {char* cru_name; char* cru_driver_name; int /*<<< orphan*/  cru_mask; int /*<<< orphan*/  cru_type; } ;
struct crypto_alg {int /*<<< orphan*/  cra_priority; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 size_t CRYPTOCFGA_PRIORITY_VAL ; 
 int EEXIST ; 
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct crypto_alg*) ; 
 int FUNC1 (struct crypto_alg*) ; 
 struct crypto_alg* FUNC2 (struct crypto_user_alg*,int) ; 
 struct crypto_alg* FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  crypto_alg_sem ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr*) ; 
 struct crypto_user_alg* FUNC8 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, struct nlmsghdr *nlh,
			  struct nlattr **attrs)
{
	int exact = 0;
	const char *name;
	struct crypto_alg *alg;
	struct crypto_user_alg *p = FUNC8(nlh);
	struct nlattr *priority = attrs[CRYPTOCFGA_PRIORITY_VAL];

	if (!FUNC6(skb, CAP_NET_ADMIN))
		return -EPERM;

	if (!FUNC9(p->cru_name) || !FUNC9(p->cru_driver_name))
		return -EINVAL;

	if (FUNC10(p->cru_driver_name))
		exact = 1;

	if (priority && !exact)
		return -EINVAL;

	alg = FUNC2(p, exact);
	if (alg) {
		FUNC4(alg);
		return -EEXIST;
	}

	if (FUNC10(p->cru_driver_name))
		name = p->cru_driver_name;
	else
		name = p->cru_name;

	alg = FUNC3(name, p->cru_type, p->cru_mask);
	if (FUNC0(alg))
		return FUNC1(alg);

	FUNC5(&crypto_alg_sem);

	if (priority)
		alg->cra_priority = FUNC7(priority);

	FUNC11(&crypto_alg_sem);

	FUNC4(alg);

	return 0;
}