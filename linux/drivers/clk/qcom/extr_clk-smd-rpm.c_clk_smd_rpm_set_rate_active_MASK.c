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
typedef  int /*<<< orphan*/  u32 ;
struct clk_smd_rpm_req {int /*<<< orphan*/  value; int /*<<< orphan*/  nbytes; int /*<<< orphan*/  key; } ;
struct clk_smd_rpm {int rpm_key; int /*<<< orphan*/  rpm_clk_id; int /*<<< orphan*/  rpm_res_type; int /*<<< orphan*/  rpm; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int FUNC0 (unsigned long,int) ; 
 int /*<<< orphan*/  QCOM_SMD_RPM_ACTIVE_STATE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct clk_smd_rpm_req*,int) ; 

__attribute__((used)) static int FUNC3(struct clk_smd_rpm *r,
				       unsigned long rate)
{
	struct clk_smd_rpm_req req = {
		.key = FUNC1(r->rpm_key),
		.nbytes = FUNC1(sizeof(u32)),
		.value = FUNC1(FUNC0(rate, 1000)), /* to kHz */
	};

	return FUNC2(r->rpm, QCOM_SMD_RPM_ACTIVE_STATE,
				  r->rpm_res_type, r->rpm_clk_id, &req,
				  sizeof(req));
}