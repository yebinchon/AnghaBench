
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nps_host_reg_mtm_cfg {int nat; int value; } ;
struct nps_host_reg_aux_udmc {int nat; int value; } ;


 int CTOP_AUX_UDMC ;
 int MTM_CFG (int) ;
 int NPS_NUM_HW_THREADS ;
 int cpu_possible_mask ;
 int cpumask_bits (int ) ;
 int ilog2 (int) ;
 int ioread32be (int ) ;
 int iowrite32be (int ,int ) ;
 int read_aux_reg (int ) ;
 scalar_t__ test_bit (int,int ) ;
 int write_aux_reg (int ,int ) ;

__attribute__((used)) static void mtm_init_nat(int cpu)
{
 struct nps_host_reg_mtm_cfg mtm_cfg;
 struct nps_host_reg_aux_udmc udmc;
 int log_nat, nat = 0, i, t;


 for (i = 0, t = cpu; i < NPS_NUM_HW_THREADS; i++, t++)
  nat += test_bit(t, cpumask_bits(cpu_possible_mask));

 log_nat = ilog2(nat);

 udmc.value = read_aux_reg(CTOP_AUX_UDMC);
 udmc.nat = log_nat;
 write_aux_reg(CTOP_AUX_UDMC, udmc.value);

 mtm_cfg.value = ioread32be(MTM_CFG(cpu));
 mtm_cfg.nat = log_nat;
 iowrite32be(mtm_cfg.value, MTM_CFG(cpu));
}
