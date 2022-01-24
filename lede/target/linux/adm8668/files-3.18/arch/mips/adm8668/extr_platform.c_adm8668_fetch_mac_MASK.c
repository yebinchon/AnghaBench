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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct tulip_platform_data {int /*<<< orphan*/  mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADM8668_SMEM1_BASE ; 
 scalar_t__ ADM8868_UBOOT_ENV ; 
 scalar_t__ ADM8868_UBOOT_LAN_MAC ; 
 scalar_t__ ADM8868_UBOOT_WAN_MAC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct tulip_platform_data eth0_pdata ; 
 struct tulip_platform_data eth1_pdata ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void FUNC3(int unit)
{
	u8 *mac;
	u32 offset;
	struct tulip_platform_data *pdata;

	switch (unit) {
	case -1:
	case 0:
		offset = ADM8868_UBOOT_LAN_MAC;
		pdata = &eth0_pdata;
		break;
	case 1:
		offset = ADM8868_UBOOT_WAN_MAC;
		pdata = &eth1_pdata;
		break;
	default:
		FUNC2("unsupported ethernet unit: %d\n", unit);
		return;
	}

	mac = (u8 *)(FUNC0(ADM8668_SMEM1_BASE) + ADM8868_UBOOT_ENV + offset);

	FUNC1(pdata->mac, mac, sizeof(pdata->mac));
}