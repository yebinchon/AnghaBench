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
struct ldc_packet {int dummy; } ;
struct ldc_channel {int tx_tail; struct ldc_packet* tx_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int LDC_PACKET_SIZE ; 
 int FUNC1 (struct ldc_channel*,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct ldc_channel *lp,
			  struct ldc_packet *p,
			  unsigned long new_tail)
{
	FUNC0(p != (lp->tx_base + (lp->tx_tail / LDC_PACKET_SIZE)));

	return FUNC1(lp, new_tail);
}