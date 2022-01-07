
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fapll_synth {int index; TYPE_1__* fd; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 scalar_t__ FAPLL_PWD_OFFSET ;
 int readl_relaxed (scalar_t__) ;
 struct fapll_synth* to_synth (struct clk_hw*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int ti_fapll_synth_enable(struct clk_hw *hw)
{
 struct fapll_synth *synth = to_synth(hw);
 u32 v = readl_relaxed(synth->fd->base + FAPLL_PWD_OFFSET);

 v &= ~(1 << synth->index);
 writel_relaxed(v, synth->fd->base + FAPLL_PWD_OFFSET);

 return 0;
}
