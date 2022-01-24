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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int nr_regs; scalar_t__ mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP4430_PRM_OCP_SOCKET_INST ; 
 TYPE_1__ omap4_prcm_irq_setup ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC1(u32 *saved_mask)
{
	int i;

	for (i = 0; i < omap4_prcm_irq_setup.nr_regs; i++)
		FUNC0(saved_mask[i],
					 OMAP4430_PRM_OCP_SOCKET_INST,
					 omap4_prcm_irq_setup.mask + i * 4);
}