
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_rpm {scalar_t__ rpm_clk_id; int rpm; } ;


 int INT_MAX ;
 int QCOM_RPM_ACTIVE_STATE ;
 scalar_t__ QCOM_RPM_CXO_BUFFERS ;
 scalar_t__ QCOM_RPM_PLL_4 ;
 int QCOM_RPM_SLEEP_STATE ;
 int qcom_rpm_write (int ,int ,scalar_t__,int *,int) ;

__attribute__((used)) static int clk_rpm_handoff(struct clk_rpm *r)
{
 int ret;
 u32 value = INT_MAX;





 if (r->rpm_clk_id == QCOM_RPM_PLL_4 ||
  r->rpm_clk_id == QCOM_RPM_CXO_BUFFERS)
  return 0;

 ret = qcom_rpm_write(r->rpm, QCOM_RPM_ACTIVE_STATE,
        r->rpm_clk_id, &value, 1);
 if (ret)
  return ret;
 ret = qcom_rpm_write(r->rpm, QCOM_RPM_SLEEP_STATE,
        r->rpm_clk_id, &value, 1);
 if (ret)
  return ret;

 return 0;
}
