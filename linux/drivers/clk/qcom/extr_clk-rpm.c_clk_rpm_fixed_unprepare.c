
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_rpm {int enabled; int rpm_clk_id; int rpm; } ;
struct clk_hw {int dummy; } ;


 int QCOM_RPM_ACTIVE_STATE ;
 int qcom_rpm_write (int ,int ,int ,int *,int) ;
 struct clk_rpm* to_clk_rpm (struct clk_hw*) ;

__attribute__((used)) static void clk_rpm_fixed_unprepare(struct clk_hw *hw)
{
 struct clk_rpm *r = to_clk_rpm(hw);
 u32 value = 0;
 int ret;

 ret = qcom_rpm_write(r->rpm, QCOM_RPM_ACTIVE_STATE,
        r->rpm_clk_id, &value, 1);
 if (!ret)
  r->enabled = 0;
}
