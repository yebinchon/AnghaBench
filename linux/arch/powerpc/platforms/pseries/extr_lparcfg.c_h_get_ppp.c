
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvcall_ppp_data {unsigned long entitlement; unsigned long unallocated_entitlement; unsigned long group_num; unsigned long pool_num; unsigned long capped; unsigned long weight; unsigned long unallocated_weight; unsigned long active_procs_in_pool; unsigned long active_system_procs; unsigned long phys_platform_procs; unsigned long max_proc_cap_avail; unsigned long entitled_proc_cap_avail; } ;


 int H_GET_PPP ;
 int PLPAR_HCALL9_BUFSIZE ;
 unsigned long plpar_hcall9 (int ,unsigned long*) ;

__attribute__((used)) static unsigned int h_get_ppp(struct hvcall_ppp_data *ppp_data)
{
 unsigned long rc;
 unsigned long retbuf[PLPAR_HCALL9_BUFSIZE];

 rc = plpar_hcall9(H_GET_PPP, retbuf);

 ppp_data->entitlement = retbuf[0];
 ppp_data->unallocated_entitlement = retbuf[1];

 ppp_data->group_num = (retbuf[2] >> 2 * 8) & 0xffff;
 ppp_data->pool_num = retbuf[2] & 0xffff;

 ppp_data->capped = (retbuf[3] >> 6 * 8) & 0x01;
 ppp_data->weight = (retbuf[3] >> 5 * 8) & 0xff;
 ppp_data->unallocated_weight = (retbuf[3] >> 4 * 8) & 0xff;
 ppp_data->active_procs_in_pool = (retbuf[3] >> 2 * 8) & 0xffff;
 ppp_data->active_system_procs = retbuf[3] & 0xffff;

 ppp_data->phys_platform_procs = retbuf[4] >> 6 * 8;
 ppp_data->max_proc_cap_avail = (retbuf[4] >> 3 * 8) & 0xffffff;
 ppp_data->entitled_proc_cap_avail = retbuf[4] & 0xffffff;

 return rc;
}
