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
struct rtl8366_smi {TYPE_1__* ops; int /*<<< orphan*/  (* hw_reset ) (struct rtl8366_smi*,int) ;} ;
struct TYPE_2__ {int (* reset_chip ) (struct rtl8366_smi*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  RTL8366_SMI_HW_START_DELAY ; 
 int /*<<< orphan*/  RTL8366_SMI_HW_STOP_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8366_smi*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8366_smi*,int) ; 
 int FUNC3 (struct rtl8366_smi*) ; 

__attribute__((used)) static int FUNC4(struct rtl8366_smi *smi)
{
	if (smi->hw_reset) {
		smi->hw_reset(smi, true);
		FUNC0(RTL8366_SMI_HW_STOP_DELAY);
		smi->hw_reset(smi, false);
		FUNC0(RTL8366_SMI_HW_START_DELAY);
		return 0;
	}

	return smi->ops->reset_chip(smi);
}