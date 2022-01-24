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
typedef  int u8 ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,...) ; 

__attribute__((used)) static void FUNC1(struct sk_buff *skb, u8 c)
{
	const char esc_c0[2] = { 0xdb, 0xdc };
	const char esc_db[2] = { 0xdb, 0xdd };

	switch (c) {
	case 0xc0:
		FUNC0(skb, &esc_c0, 2);
		break;
	case 0xdb:
		FUNC0(skb, &esc_db, 2);
		break;
	default:
		FUNC0(skb, &c, 1);
	}
}