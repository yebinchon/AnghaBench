
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_ddrclk {int lock; } ;
struct clk_hw {int dummy; } ;
struct arm_smccc_res {int a0; } ;


 int ROCKCHIP_SIP_CONFIG_DRAM_SET_RATE ;
 int ROCKCHIP_SIP_DRAM_FREQ ;
 int arm_smccc_smc (int ,unsigned long,int ,int ,int ,int ,int ,int ,struct arm_smccc_res*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct rockchip_ddrclk* to_rockchip_ddrclk_hw (struct clk_hw*) ;

__attribute__((used)) static int rockchip_ddrclk_sip_set_rate(struct clk_hw *hw, unsigned long drate,
     unsigned long prate)
{
 struct rockchip_ddrclk *ddrclk = to_rockchip_ddrclk_hw(hw);
 unsigned long flags;
 struct arm_smccc_res res;

 spin_lock_irqsave(ddrclk->lock, flags);
 arm_smccc_smc(ROCKCHIP_SIP_DRAM_FREQ, drate, 0,
        ROCKCHIP_SIP_CONFIG_DRAM_SET_RATE,
        0, 0, 0, 0, &res);
 spin_unlock_irqrestore(ddrclk->lock, flags);

 return res.a0;
}
