
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nps_host_reg_mtm_cfg {int ten; int value; } ;


 int MTM_CFG (int) ;
 int NPS_CPU_TO_THREAD_NUM (int) ;
 int ioread32be (int ) ;
 int iowrite32be (int ,int ) ;

int mtm_enable_thread(int cpu)
{
 struct nps_host_reg_mtm_cfg mtm_cfg;

 if (NPS_CPU_TO_THREAD_NUM(cpu) == 0)
  return 1;


 mtm_cfg.value = ioread32be(MTM_CFG(cpu));
 mtm_cfg.ten |= (1 << (NPS_CPU_TO_THREAD_NUM(cpu)));
 iowrite32be(mtm_cfg.value, MTM_CFG(cpu));

 return 0;
}
