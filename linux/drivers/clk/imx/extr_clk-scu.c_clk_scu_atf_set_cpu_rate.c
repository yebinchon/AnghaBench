
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_scu {scalar_t__ rsrc_id; } ;
struct clk_hw {int dummy; } ;
struct arm_smccc_res {int dummy; } ;


 int EINVAL ;
 scalar_t__ IMX_SC_R_A35 ;
 int IMX_SIP_CPUFREQ ;
 int IMX_SIP_SET_CPUFREQ ;
 int arm_smccc_smc (int ,int ,unsigned long,unsigned long,int ,int ,int ,int ,struct arm_smccc_res*) ;
 struct clk_scu* to_clk_scu (struct clk_hw*) ;

__attribute__((used)) static int clk_scu_atf_set_cpu_rate(struct clk_hw *hw, unsigned long rate,
        unsigned long parent_rate)
{
 struct clk_scu *clk = to_clk_scu(hw);
 struct arm_smccc_res res;
 unsigned long cluster_id;

 if (clk->rsrc_id == IMX_SC_R_A35)
  cluster_id = 0;
 else
  return -EINVAL;


 arm_smccc_smc(IMX_SIP_CPUFREQ, IMX_SIP_SET_CPUFREQ,
        cluster_id, rate, 0, 0, 0, 0, &res);

 return 0;
}
