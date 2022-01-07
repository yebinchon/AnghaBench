
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;
struct bcm2835_gate_data {scalar_t__ ctl_reg; int parent; int name; } ;
struct bcm2835_cprman {int regs_lock; scalar_t__ regs; int dev; } ;


 int CLK_IGNORE_UNUSED ;
 int CLK_SET_RATE_GATE ;
 int CM_GATE_BIT ;
 struct clk* clk_register_gate (int ,int ,int ,int,scalar_t__,int ,int ,int *) ;

__attribute__((used)) static struct clk *bcm2835_register_gate(struct bcm2835_cprman *cprman,
      const struct bcm2835_gate_data *data)
{
 return clk_register_gate(cprman->dev, data->name, data->parent,
     CLK_IGNORE_UNUSED | CLK_SET_RATE_GATE,
     cprman->regs + data->ctl_reg,
     CM_GATE_BIT, 0, &cprman->regs_lock);
}
