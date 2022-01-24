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
typedef  int u64 ;
struct brcmstb_gisb_arb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARB_ERR_CAP_ADDR ; 
 int /*<<< orphan*/  ARB_ERR_CAP_HI_ADDR ; 
 int FUNC0 (struct brcmstb_gisb_arb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64 FUNC1(struct brcmstb_gisb_arb_device *gdev)
{
	u64 value;

	value = FUNC0(gdev, ARB_ERR_CAP_ADDR);
	value |= (u64)FUNC0(gdev, ARB_ERR_CAP_HI_ADDR) << 32;

	return value;
}