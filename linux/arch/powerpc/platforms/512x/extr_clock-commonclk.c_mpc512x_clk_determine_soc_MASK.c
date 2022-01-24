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

/* Variables and functions */
 int /*<<< orphan*/  MPC512x_SOC_MPC5121 ; 
 int /*<<< orphan*/  MPC512x_SOC_MPC5123 ; 
 int /*<<< orphan*/  MPC512x_SOC_MPC5125 ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  soc ; 

__attribute__((used)) static void FUNC1(void)
{
	if (FUNC0("fsl,mpc5121")) {
		soc = MPC512x_SOC_MPC5121;
		return;
	}
	if (FUNC0("fsl,mpc5123")) {
		soc = MPC512x_SOC_MPC5123;
		return;
	}
	if (FUNC0("fsl,mpc5125")) {
		soc = MPC512x_SOC_MPC5125;
		return;
	}
}