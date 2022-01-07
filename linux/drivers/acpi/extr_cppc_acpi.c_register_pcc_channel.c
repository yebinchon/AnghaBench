
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct acpi_pcct_hw_reduced {int latency; int length; int base_address; int max_access_rate; int min_turnaround_time; } ;
struct TYPE_5__ {int deadline_us; int pcc_nominal; int pcc_channel_acquired; int pcc_comm_addr; int pcc_mpar; int pcc_mrtt; TYPE_1__* pcc_channel; } ;
struct TYPE_4__ {struct acpi_pcct_hw_reduced* con_priv; } ;


 int ENODEV ;
 int ENOMEM ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int NUM_RETRIES ;
 int acpi_os_ioremap (int ,int ) ;
 int cppc_mbox_cl ;
 TYPE_2__** pcc_data ;
 TYPE_1__* pcc_mbox_request_channel (int *,int) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int register_pcc_channel(int pcc_ss_idx)
{
 struct acpi_pcct_hw_reduced *cppc_ss;
 u64 usecs_lat;

 if (pcc_ss_idx >= 0) {
  pcc_data[pcc_ss_idx]->pcc_channel =
   pcc_mbox_request_channel(&cppc_mbox_cl, pcc_ss_idx);

  if (IS_ERR(pcc_data[pcc_ss_idx]->pcc_channel)) {
   pr_err("Failed to find PCC channel for subspace %d\n",
          pcc_ss_idx);
   return -ENODEV;
  }







  cppc_ss = (pcc_data[pcc_ss_idx]->pcc_channel)->con_priv;

  if (!cppc_ss) {
   pr_err("No PCC subspace found for %d CPPC\n",
          pcc_ss_idx);
   return -ENODEV;
  }






  usecs_lat = NUM_RETRIES * cppc_ss->latency;
  pcc_data[pcc_ss_idx]->deadline_us = usecs_lat;
  pcc_data[pcc_ss_idx]->pcc_mrtt = cppc_ss->min_turnaround_time;
  pcc_data[pcc_ss_idx]->pcc_mpar = cppc_ss->max_access_rate;
  pcc_data[pcc_ss_idx]->pcc_nominal = cppc_ss->latency;

  pcc_data[pcc_ss_idx]->pcc_comm_addr =
   acpi_os_ioremap(cppc_ss->base_address, cppc_ss->length);
  if (!pcc_data[pcc_ss_idx]->pcc_comm_addr) {
   pr_err("Failed to ioremap PCC comm region mem for %d\n",
          pcc_ss_idx);
   return -ENOMEM;
  }


  pcc_data[pcc_ss_idx]->pcc_channel_acquired = 1;
 }

 return 0;
}
