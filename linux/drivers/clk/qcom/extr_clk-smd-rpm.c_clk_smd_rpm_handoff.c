
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_smd_rpm_req {int value; int nbytes; int key; } ;
struct clk_smd_rpm {int rpm_key; int rpm_clk_id; int rpm_res_type; int rpm; int branch; } ;
typedef int req ;


 int INT_MAX ;
 int QCOM_SMD_RPM_ACTIVE_STATE ;
 int QCOM_SMD_RPM_SLEEP_STATE ;
 int cpu_to_le32 (int) ;
 int qcom_rpm_smd_write (int ,int ,int ,int ,struct clk_smd_rpm_req*,int) ;

__attribute__((used)) static int clk_smd_rpm_handoff(struct clk_smd_rpm *r)
{
 int ret;
 struct clk_smd_rpm_req req = {
  .key = cpu_to_le32(r->rpm_key),
  .nbytes = cpu_to_le32(sizeof(u32)),
  .value = cpu_to_le32(r->branch ? 1 : INT_MAX),
 };

 ret = qcom_rpm_smd_write(r->rpm, QCOM_SMD_RPM_ACTIVE_STATE,
     r->rpm_res_type, r->rpm_clk_id, &req,
     sizeof(req));
 if (ret)
  return ret;
 ret = qcom_rpm_smd_write(r->rpm, QCOM_SMD_RPM_SLEEP_STATE,
     r->rpm_res_type, r->rpm_clk_id, &req,
     sizeof(req));
 if (ret)
  return ret;

 return 0;
}
