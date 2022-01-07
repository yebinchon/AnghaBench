
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cppc_perf_ctrls {int desired_perf; } ;
struct cppc_pcc_data {int pending_pcc_write_cmd; scalar_t__ pcc_write_cnt; int pcc_write_wait_q; int pcc_lock; scalar_t__ platform_owns_pcc; } ;
struct cpc_register_resource {int dummy; } ;
struct cpc_desc {scalar_t__ write_cmd_id; int write_cmd_status; struct cpc_register_resource* cpc_regs; } ;


 int CMD_WRITE ;
 scalar_t__ CPC_IN_PCC (struct cpc_register_resource*) ;
 size_t DESIRED_PERF ;
 int ENODEV ;
 int check_pcc_chan (int,int) ;
 int cpc_desc_ptr ;
 int cpc_write (int,struct cpc_register_resource*,int ) ;
 int cpu_pcc_subspace_idx ;
 int down_read (int *) ;
 scalar_t__ down_write_trylock (int *) ;
 struct cppc_pcc_data** pcc_data ;
 struct cpc_desc* per_cpu (int ,int) ;
 int pr_debug (char*,...) ;
 int send_pcc_cmd (int,int ) ;
 int up_read (int *) ;
 int up_write (int *) ;
 int wait_event (int ,int) ;

int cppc_set_perf(int cpu, struct cppc_perf_ctrls *perf_ctrls)
{
 struct cpc_desc *cpc_desc = per_cpu(cpc_desc_ptr, cpu);
 struct cpc_register_resource *desired_reg;
 int pcc_ss_id = per_cpu(cpu_pcc_subspace_idx, cpu);
 struct cppc_pcc_data *pcc_ss_data = ((void*)0);
 int ret = 0;

 if (!cpc_desc) {
  pr_debug("No CPC descriptor for CPU:%d\n", cpu);
  return -ENODEV;
 }

 desired_reg = &cpc_desc->cpc_regs[DESIRED_PERF];
 if (CPC_IN_PCC(desired_reg)) {
  if (pcc_ss_id < 0) {
   pr_debug("Invalid pcc_ss_id\n");
   return -ENODEV;
  }
  pcc_ss_data = pcc_data[pcc_ss_id];
  down_read(&pcc_ss_data->pcc_lock);
  if (pcc_ss_data->platform_owns_pcc) {
   ret = check_pcc_chan(pcc_ss_id, 0);
   if (ret) {
    up_read(&pcc_ss_data->pcc_lock);
    return ret;
   }
  }




  pcc_ss_data->pending_pcc_write_cmd = 1;
  cpc_desc->write_cmd_id = pcc_ss_data->pcc_write_cnt;
  cpc_desc->write_cmd_status = 0;
 }





 cpc_write(cpu, desired_reg, perf_ctrls->desired_perf);

 if (CPC_IN_PCC(desired_reg))
  up_read(&pcc_ss_data->pcc_lock);
 if (CPC_IN_PCC(desired_reg)) {
  if (down_write_trylock(&pcc_ss_data->pcc_lock)) {

   if (pcc_ss_data->pending_pcc_write_cmd)
    send_pcc_cmd(pcc_ss_id, CMD_WRITE);
   up_write(&pcc_ss_data->pcc_lock);
  } else

   wait_event(pcc_ss_data->pcc_write_wait_q,
       cpc_desc->write_cmd_id != pcc_ss_data->pcc_write_cnt);


  ret = cpc_desc->write_cmd_status;
 }
 return ret;
}
