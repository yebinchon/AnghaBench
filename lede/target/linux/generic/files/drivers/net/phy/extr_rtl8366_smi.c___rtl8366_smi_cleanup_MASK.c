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
struct rtl8366_smi {int /*<<< orphan*/  gpio_sda; int /*<<< orphan*/  gpio_sck; int /*<<< orphan*/  ext_mbus; int /*<<< orphan*/  (* hw_reset ) (struct rtl8366_smi*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8366_smi*,int) ; 

__attribute__((used)) static void FUNC2(struct rtl8366_smi *smi)
{
	if (smi->hw_reset)
		smi->hw_reset(smi, true);

	if (!smi->ext_mbus) {
		FUNC0(smi->gpio_sck);
		FUNC0(smi->gpio_sda);
	}
}