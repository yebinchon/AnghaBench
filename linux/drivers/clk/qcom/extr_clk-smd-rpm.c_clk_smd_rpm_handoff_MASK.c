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
struct clk_smd_rpm {int rpm_key; int /*<<< orphan*/  rpm_clk_id; int /*<<< orphan*/  rpm_res_type; int /*<<< orphan*/  rpm; int /*<<< orphan*/  branch; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int INT_MAX ; 
 int /*<<< orphan*/  QCOM_SMD_RPM_ACTIVE_STATE ; 
 int /*<<< orphan*/  QCOM_SMD_RPM_SLEEP_STATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct clk_smd_rpm_req*,int) ; 

__attribute__((used)) static int FUNC2(struct clk_smd_rpm *r)
{
	int ret;
	struct clk_smd_rpm_req req = {
		.key = FUNC0(r->rpm_key),
		.nbytes = FUNC0(sizeof(u32)),
		.value = FUNC0(r->branch ? 1 : INT_MAX),
	};

	ret = FUNC1(r->rpm, QCOM_SMD_RPM_ACTIVE_STATE,
				 r->rpm_res_type, r->rpm_clk_id, &req,
				 sizeof(req));
	if (ret)
		return ret;
	ret = FUNC1(r->rpm, QCOM_SMD_RPM_SLEEP_STATE,
				 r->rpm_res_type, r->rpm_clk_id, &req,
				 sizeof(req));
	if (ret)
		return ret;

	return 0;
}