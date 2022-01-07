
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx_rngc {scalar_t__ err_reg; int rng_op_done; scalar_t__ base; } ;


 int EIO ;
 int ETIMEDOUT ;
 int RNGC_CMD_SELF_TEST ;
 scalar_t__ RNGC_COMMAND ;
 int RNGC_TIMEOUT ;
 int imx_rngc_irq_mask_clear (struct imx_rngc*) ;
 int imx_rngc_irq_unmask (struct imx_rngc*) ;
 int readl (scalar_t__) ;
 int wait_for_completion_timeout (int *,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int imx_rngc_self_test(struct imx_rngc *rngc)
{
 u32 cmd;
 int ret;

 imx_rngc_irq_unmask(rngc);


 cmd = readl(rngc->base + RNGC_COMMAND);
 writel(cmd | RNGC_CMD_SELF_TEST, rngc->base + RNGC_COMMAND);

 ret = wait_for_completion_timeout(&rngc->rng_op_done, RNGC_TIMEOUT);
 if (!ret) {
  imx_rngc_irq_mask_clear(rngc);
  return -ETIMEDOUT;
 }

 if (rngc->err_reg != 0)
  return -EIO;

 return 0;
}
