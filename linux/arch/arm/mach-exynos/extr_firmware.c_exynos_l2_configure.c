
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2x0_regs {int aux_ctrl; int pwr_ctrl; int prefetch_ctrl; int data_latency; int tag_latency; } ;


 int SMC_CMD_L2X0SETUP1 ;
 int SMC_CMD_L2X0SETUP2 ;
 int exynos_smc (int ,int ,int ,int ) ;

__attribute__((used)) static void exynos_l2_configure(const struct l2x0_regs *regs)
{
 exynos_smc(SMC_CMD_L2X0SETUP1, regs->tag_latency, regs->data_latency,
     regs->prefetch_ctrl);
 exynos_smc(SMC_CMD_L2X0SETUP2, regs->pwr_ctrl, regs->aux_ctrl, 0);
}
