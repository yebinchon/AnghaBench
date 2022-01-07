
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rpm_cc {int xo_buffer_value; int xo_lock; } ;
struct clk_rpm {int rpm_clk_id; int xo_offset; int enabled; int rpm; struct rpm_cc* rpm_cc; } ;
struct clk_hw {int dummy; } ;


 int QCOM_RPM_ACTIVE_STATE ;
 int QCOM_RPM_XO_MODE_ON ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qcom_rpm_write (int ,int ,int,int*,int) ;
 struct clk_rpm* to_clk_rpm (struct clk_hw*) ;

__attribute__((used)) static int clk_rpm_xo_prepare(struct clk_hw *hw)
{
 struct clk_rpm *r = to_clk_rpm(hw);
 struct rpm_cc *rcc = r->rpm_cc;
 int ret, clk_id = r->rpm_clk_id;
 u32 value;

 mutex_lock(&rcc->xo_lock);

 value = rcc->xo_buffer_value | (QCOM_RPM_XO_MODE_ON << r->xo_offset);
 ret = qcom_rpm_write(r->rpm, QCOM_RPM_ACTIVE_STATE, clk_id, &value, 1);
 if (!ret) {
  r->enabled = 1;
  rcc->xo_buffer_value = value;
 }

 mutex_unlock(&rcc->xo_lock);

 return ret;
}
