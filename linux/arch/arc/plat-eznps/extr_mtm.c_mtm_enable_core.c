
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nps_host_reg_mtm_cfg {int ten; int value; } ;
struct nps_host_reg_aux_mt_ctrl {int hsen; int mten; scalar_t__ value; int hs_cnt; } ;
struct nps_host_reg_aux_dpc {int ien; int men; scalar_t__ value; } ;


 int CTOP_AUX_DPC ;
 int CTOP_AUX_MT_CTRL ;
 int MTM_CFG (unsigned int) ;
 scalar_t__ NPS_CPU_TO_THREAD_NUM (unsigned int) ;
 int NPS_NUM_HW_THREADS ;
 int cpu_relax () ;
 int ioread32be (int ) ;
 int iowrite32be (int ,int ) ;
 int mtm_hs_ctr ;
 int mtm_init_nat (unsigned int) ;
 int mtm_init_thread (unsigned int) ;
 int write_aux_reg (int ,scalar_t__) ;

void mtm_enable_core(unsigned int cpu)
{
 int i;
 struct nps_host_reg_aux_mt_ctrl mt_ctrl;
 struct nps_host_reg_mtm_cfg mtm_cfg;
 struct nps_host_reg_aux_dpc dpc;
 dpc.ien = 1;
 dpc.men = 1;
 write_aux_reg(CTOP_AUX_DPC, dpc.value);

 if (NPS_CPU_TO_THREAD_NUM(cpu) != 0)
  return;


 mtm_init_nat(cpu);


 mtm_cfg.value = ioread32be(MTM_CFG(cpu));
 mtm_cfg.ten = 1;
 iowrite32be(mtm_cfg.value, MTM_CFG(cpu));


 for (i = 1; i < NPS_NUM_HW_THREADS; i++)
  mtm_init_thread(cpu + i);



 mt_ctrl.value = 0;
 mt_ctrl.hsen = 1;
 mt_ctrl.hs_cnt = mtm_hs_ctr;
 mt_ctrl.mten = 1;
 write_aux_reg(CTOP_AUX_MT_CTRL, mt_ctrl.value);






 cpu_relax();
}
