
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {size_t bits; } ;
struct TYPE_2__ {int start; } ;


 int BIT (size_t) ;
 int CON_CLK_INT ;
 int CON_CNT ;
 int CON_EDGE_ANY ;
 int CON_SYNC ;
 int GPTU_CON (size_t) ;
 int GPTU_IRNEN ;
 int GPTU_RLD (size_t) ;
 int GPTU_RUN (size_t) ;
 int IRQF_TIMER ;
 int RUN_RL ;
 int RUN_SEN ;
 int gptu_r32 (int ) ;
 int gptu_w32 (int,int ) ;
 TYPE_1__* irqres ;
 int pr_err (char*) ;
 int request_irq (int ,int ,int ,char*,int *) ;
 int timer_irq_handler ;

__attribute__((used)) static int gptu_enable(struct clk *clk)
{
 int ret = request_irq(irqres[clk->bits].start, timer_irq_handler,
  IRQF_TIMER, "gtpu", ((void*)0));
 if (ret) {
  pr_err("gptu: failed to request irq\n");
  return ret;
 }

 gptu_w32(CON_CNT | CON_EDGE_ANY | CON_SYNC | CON_CLK_INT,
  GPTU_CON(clk->bits));
 gptu_w32(1, GPTU_RLD(clk->bits));
 gptu_w32(gptu_r32(GPTU_IRNEN) | BIT(clk->bits), GPTU_IRNEN);
 gptu_w32(RUN_SEN | RUN_RL, GPTU_RUN(clk->bits));
 return 0;
}
