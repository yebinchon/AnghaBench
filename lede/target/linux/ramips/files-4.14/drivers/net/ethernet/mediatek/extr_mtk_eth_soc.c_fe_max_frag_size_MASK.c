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
struct skb_shared_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FE_RX_ETH_HLEN ; 
 int FE_RX_HLEN ; 
 scalar_t__ MAX_RX_LENGTH ; 
 int FUNC0 (int) ; 

__attribute__((used)) static inline int FUNC1(int mtu)
{
	/* make sure buf_size will be at least MAX_RX_LENGTH */
	if (mtu + FE_RX_ETH_HLEN < MAX_RX_LENGTH)
		mtu = MAX_RX_LENGTH - FE_RX_ETH_HLEN;

	return FUNC0(FE_RX_HLEN + mtu) +
		FUNC0(sizeof(struct skb_shared_info));
}