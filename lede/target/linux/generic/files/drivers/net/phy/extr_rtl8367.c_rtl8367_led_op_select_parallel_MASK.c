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
struct rtl8366_smi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtl8366_smi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RTL8367_LED_SYS_CONFIG_REG ; 

__attribute__((used)) static int FUNC1(struct rtl8366_smi *smi)
{
	int err;

	FUNC0(smi, RTL8367_LED_SYS_CONFIG_REG, 0x1472);
	return 0;
}