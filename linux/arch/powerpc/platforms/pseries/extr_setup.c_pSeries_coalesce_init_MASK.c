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
struct hvcall_mpp_x_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_FEATURE_CMO ; 
 int /*<<< orphan*/  FW_FEATURE_XCMO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hvcall_mpp_x_data*) ; 
 int /*<<< orphan*/  powerpc_firmware_features ; 

void FUNC2(void)
{
	struct hvcall_mpp_x_data mpp_x_data;

	if (FUNC0(FW_FEATURE_CMO) && !FUNC1(&mpp_x_data))
		powerpc_firmware_features |= FW_FEATURE_XCMO;
	else
		powerpc_firmware_features &= ~FW_FEATURE_XCMO;
}