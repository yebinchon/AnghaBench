
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {int clk_name; } ;


 int EINVAL ;
 int MAX_NAME_LEN ;
 TYPE_1__* clock ;
 int strncpy (char*,int ,int ) ;
 int zynqmp_is_valid_clock (size_t) ;

__attribute__((used)) static int zynqmp_get_clock_name(u32 clk_id, char *clk_name)
{
 int ret;

 ret = zynqmp_is_valid_clock(clk_id);
 if (ret == 1) {
  strncpy(clk_name, clock[clk_id].clk_name, MAX_NAME_LEN);
  return 0;
 }

 return ret == 0 ? -EINVAL : ret;
}
