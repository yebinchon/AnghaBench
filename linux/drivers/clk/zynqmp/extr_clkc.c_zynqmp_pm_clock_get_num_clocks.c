
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct zynqmp_pm_query_data {int qid; int member_0; } ;
struct TYPE_2__ {int (* query_data ) (struct zynqmp_pm_query_data,int *) ;} ;


 int PAYLOAD_ARG_CNT ;
 int PM_QID_CLOCK_GET_NUM_CLOCKS ;
 TYPE_1__* eemi_ops ;
 int stub1 (struct zynqmp_pm_query_data,int *) ;

__attribute__((used)) static int zynqmp_pm_clock_get_num_clocks(u32 *nclocks)
{
 struct zynqmp_pm_query_data qdata = {0};
 u32 ret_payload[PAYLOAD_ARG_CNT];
 int ret;

 qdata.qid = PM_QID_CLOCK_GET_NUM_CLOCKS;

 ret = eemi_ops->query_data(qdata, ret_payload);
 *nclocks = ret_payload[1];

 return ret;
}
