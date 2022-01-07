
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct zynqmp_pm_query_data {int arg1; int qid; int member_0; } ;
struct name_resp {int dummy; } ;
struct TYPE_2__ {int (* query_data ) (struct zynqmp_pm_query_data,int *) ;} ;


 int PAYLOAD_ARG_CNT ;
 int PM_QID_CLOCK_GET_NAME ;
 TYPE_1__* eemi_ops ;
 int memcpy (struct name_resp*,int *,int) ;
 int stub1 (struct zynqmp_pm_query_data,int *) ;

__attribute__((used)) static int zynqmp_pm_clock_get_name(u32 clock_id,
        struct name_resp *response)
{
 struct zynqmp_pm_query_data qdata = {0};
 u32 ret_payload[PAYLOAD_ARG_CNT];

 qdata.qid = PM_QID_CLOCK_GET_NAME;
 qdata.arg1 = clock_id;

 eemi_ops->query_data(qdata, ret_payload);
 memcpy(response, ret_payload, sizeof(*response));

 return 0;
}
