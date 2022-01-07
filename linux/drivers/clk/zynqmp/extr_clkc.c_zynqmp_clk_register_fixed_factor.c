
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct zynqmp_pm_query_data {int arg1; int qid; int member_0; } ;
struct clock_topology {int flag; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* query_data ) (struct zynqmp_pm_query_data,int *) ;} ;


 struct clk_hw* ERR_PTR (int) ;
 int PAYLOAD_ARG_CNT ;
 int PM_QID_CLOCK_GET_FIXEDFACTOR_PARAMS ;
 struct clk_hw* clk_hw_register_fixed_factor (int *,char const*,char const* const,int ,int ,int ) ;
 TYPE_1__* eemi_ops ;
 int stub1 (struct zynqmp_pm_query_data,int *) ;

struct clk_hw *zynqmp_clk_register_fixed_factor(const char *name, u32 clk_id,
     const char * const *parents,
     u8 num_parents,
     const struct clock_topology *nodes)
{
 u32 mult, div;
 struct clk_hw *hw;
 struct zynqmp_pm_query_data qdata = {0};
 u32 ret_payload[PAYLOAD_ARG_CNT];
 int ret;

 qdata.qid = PM_QID_CLOCK_GET_FIXEDFACTOR_PARAMS;
 qdata.arg1 = clk_id;

 ret = eemi_ops->query_data(qdata, ret_payload);
 if (ret)
  return ERR_PTR(ret);

 mult = ret_payload[1];
 div = ret_payload[2];

 hw = clk_hw_register_fixed_factor(((void*)0), name,
       parents[0],
       nodes->flag, mult,
       div);

 return hw;
}
