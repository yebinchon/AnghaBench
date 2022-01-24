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
typedef  scalar_t__ ulong ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_AOE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ MAX_HEADER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *
FUNC6(ulong len)
{
	struct sk_buff *skb;

	skb = FUNC1(len + MAX_HEADER, GFP_ATOMIC);
	if (skb) {
		FUNC3(skb, MAX_HEADER);
		FUNC4(skb);
		FUNC5(skb);
		skb->protocol = FUNC0(ETH_P_AOE);
		FUNC2(skb);
	}
	return skb;
}