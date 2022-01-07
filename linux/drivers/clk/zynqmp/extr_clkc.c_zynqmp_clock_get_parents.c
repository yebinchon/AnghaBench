
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct parents_resp {int parents; } ;
struct clock_parent {int dummy; } ;
struct TYPE_2__ {int clk_id; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int END_OF_PARENTS ;
 scalar_t__ MAX_PARENT ;
 int __zynqmp_clock_get_parents (struct clock_parent*,struct parents_resp*,scalar_t__*) ;
 TYPE_1__* clock ;
 int zynqmp_pm_clock_get_parents (int ,int,struct parents_resp*) ;

__attribute__((used)) static int zynqmp_clock_get_parents(u32 clk_id, struct clock_parent *parents,
        u32 *num_parents)
{
 int j = 0, ret;
 struct parents_resp response = { };

 *num_parents = 0;
 do {

  ret = zynqmp_pm_clock_get_parents(clock[clk_id].clk_id, j,
        &response);
  if (ret)
   return ret;

  ret = __zynqmp_clock_get_parents(&parents[j], &response,
       num_parents);
  if (ret == END_OF_PARENTS)
   return 0;
  j += ARRAY_SIZE(response.parents);
 } while (*num_parents <= MAX_PARENT);

 return 0;
}
