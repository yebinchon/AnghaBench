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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct fe_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  MTK_CPU_REASON_KEEPALIVE_DUP_OLD_HDR 131 
#define  MTK_CPU_REASON_KEEPALIVE_MC_NEW_HDR 130 
#define  MTK_CPU_REASON_KEEPALIVE_UC_OLD_HDR 129 
#define  MTK_CPU_REASON_PACKET_SAMPLING 128 
 int /*<<< orphan*/  MTK_RXD4_CPU_REASON ; 
 int /*<<< orphan*/  MTK_RXD4_FOE_ENTRY ; 
 int /*<<< orphan*/  FUNC1 (struct fe_priv*,unsigned int) ; 

int FUNC2(struct fe_priv *eth, struct sk_buff *skb, u32 rxd4)
{
	unsigned int hash;

	switch (FUNC0(MTK_RXD4_CPU_REASON, rxd4)) {
	case MTK_CPU_REASON_KEEPALIVE_UC_OLD_HDR:
	case MTK_CPU_REASON_KEEPALIVE_MC_NEW_HDR:
	case MTK_CPU_REASON_KEEPALIVE_DUP_OLD_HDR:
		hash = FUNC0(MTK_RXD4_FOE_ENTRY, rxd4);
		FUNC1(eth, hash);
		return -1;
	case MTK_CPU_REASON_PACKET_SAMPLING:
		return -1;
	default:
		return 0;
	}
}