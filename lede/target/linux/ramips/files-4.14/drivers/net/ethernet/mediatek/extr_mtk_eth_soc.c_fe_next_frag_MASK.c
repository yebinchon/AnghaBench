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
struct sk_buff {struct sk_buff* next; } ;
struct TYPE_2__ {struct sk_buff* frag_list; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static inline struct sk_buff *
FUNC2(struct sk_buff *head, struct sk_buff *skb)
{
	if (skb != head)
		return skb->next;

	if (FUNC0(skb))
		return FUNC1(skb)->frag_list;

	return NULL;
}