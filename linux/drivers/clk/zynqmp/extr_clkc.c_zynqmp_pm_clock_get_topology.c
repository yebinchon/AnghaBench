
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct zynqmp_pm_query_data {void* arg2; void* arg1; int qid; int member_0; } ;
struct topology_resp {int dummy; } ;
struct TYPE_2__ {int (* query_data ) (struct zynqmp_pm_query_data,void**) ;} ;


 int PAYLOAD_ARG_CNT ;
 int PM_QID_CLOCK_GET_TOPOLOGY ;
 TYPE_1__* eemi_ops ;
 int memcpy (struct topology_resp*,void**,int) ;
 int stub1 (struct zynqmp_pm_query_data,void**) ;

__attribute__((used)) static int zynqmp_pm_clock_get_topology(u32 clock_id, u32 index,
     struct topology_resp *response)
{
 struct zynqmp_pm_query_data qdata = {0};
 u32 ret_payload[PAYLOAD_ARG_CNT];
 int ret;

 qdata.qid = PM_QID_CLOCK_GET_TOPOLOGY;
 qdata.arg1 = clock_id;
 qdata.arg2 = index;

 ret = eemi_ops->query_data(qdata, ret_payload);
 memcpy(response, &ret_payload[1], sizeof(*response));

 return ret;
}
