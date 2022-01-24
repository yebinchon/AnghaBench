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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct net {int /*<<< orphan*/  crypto_nlsk; } ;
struct crypto_user_alg {int /*<<< orphan*/  cru_driver_name; int /*<<< orphan*/  cru_name; } ;
struct crypto_dump_info {scalar_t__ nlmsg_flags; int /*<<< orphan*/  nlmsg_seq; struct sk_buff* out_skb; struct sk_buff* in_skb; } ;
struct crypto_alg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 struct crypto_alg* FUNC1 (struct crypto_user_alg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_alg*) ; 
 int FUNC3 (struct crypto_alg*,struct crypto_dump_info*) ; 
 struct crypto_user_alg* FUNC4 (struct nlmsghdr*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct net* FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct sk_buff *in_skb, struct nlmsghdr *in_nlh,
		      struct nlattr **attrs)
{
	struct net *net = FUNC8(in_skb->sk);
	struct crypto_user_alg *p = FUNC4(in_nlh);
	struct crypto_alg *alg;
	struct sk_buff *skb;
	struct crypto_dump_info info;
	int err;

	if (!FUNC7(p->cru_name) || !FUNC7(p->cru_driver_name))
		return -EINVAL;

	alg = FUNC1(p, 0);
	if (!alg)
		return -ENOENT;

	err = -ENOMEM;
	skb = FUNC5(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);
	if (!skb)
		goto drop_alg;

	info.in_skb = in_skb;
	info.out_skb = skb;
	info.nlmsg_seq = in_nlh->nlmsg_seq;
	info.nlmsg_flags = 0;

	err = FUNC3(alg, &info);

drop_alg:
	FUNC2(alg);

	if (err)
		return err;

	return FUNC6(net->crypto_nlsk, skb, FUNC0(in_skb).portid);
}