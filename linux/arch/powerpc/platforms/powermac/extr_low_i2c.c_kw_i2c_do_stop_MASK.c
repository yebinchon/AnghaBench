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
struct pmac_i2c_host_kw {int result; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  KW_I2C_CTL_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reg_control ; 
 int /*<<< orphan*/  state_stop ; 

__attribute__((used)) static void FUNC1(struct pmac_i2c_host_kw *host, int result)
{
	FUNC0(reg_control, KW_I2C_CTL_STOP);
	host->state = state_stop;
	host->result = result;
}