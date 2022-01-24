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
struct sk_buff {int* data; } ;
struct ag71xx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR8216_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 

void FUNC1(struct ag71xx *ag, struct sk_buff *skb)
{
	FUNC0(skb, AR8216_HEADER_LEN);
	skb->data[0] = 0x10;
	skb->data[1] = 0x80;
}