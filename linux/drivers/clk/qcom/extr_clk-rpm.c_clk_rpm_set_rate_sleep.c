
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_rpm {int rpm_clk_id; int rpm; } ;


 int DIV_ROUND_UP (unsigned long,int) ;
 int QCOM_RPM_SLEEP_STATE ;
 int qcom_rpm_write (int ,int ,int ,int *,int) ;

__attribute__((used)) static int clk_rpm_set_rate_sleep(struct clk_rpm *r, unsigned long rate)
{
 u32 value = DIV_ROUND_UP(rate, 1000);

 return qcom_rpm_write(r->rpm, QCOM_RPM_SLEEP_STATE,
         r->rpm_clk_id, &value, 1);
}
