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
struct nlmsghdr {int dummy; } ;
struct crypto_user_alg {int dummy; } ;
struct crypto_dump_info {int /*<<< orphan*/  nlmsg_flags; int /*<<< orphan*/  nlmsg_seq; struct sk_buff* out_skb; struct sk_buff* in_skb; } ;
struct crypto_alg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_MSG_GETSTAT ; 
 int EMSGSIZE ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct crypto_alg*,struct crypto_user_alg*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlmsghdr*) ; 
 struct crypto_user_alg* FUNC3 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct crypto_alg *alg,
				 struct crypto_dump_info *info)
{
	struct sk_buff *in_skb = info->in_skb;
	struct sk_buff *skb = info->out_skb;
	struct nlmsghdr *nlh;
	struct crypto_user_alg *ualg;
	int err = 0;

	nlh = FUNC5(skb, FUNC0(in_skb).portid, info->nlmsg_seq,
			CRYPTO_MSG_GETSTAT, sizeof(*ualg), info->nlmsg_flags);
	if (!nlh) {
		err = -EMSGSIZE;
		goto out;
	}

	ualg = FUNC3(nlh);

	err = FUNC1(alg, ualg, skb);
	if (err) {
		FUNC2(skb, nlh);
		goto out;
	}

	FUNC4(skb, nlh);

out:
	return err;
}