
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_gate {int flags; int reg; } ;


 int CLK_GATE_BIG_ENDIAN ;
 int iowrite32be (int ,int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static inline void clk_gate_writel(struct clk_gate *gate, u32 val)
{
 if (gate->flags & CLK_GATE_BIG_ENDIAN)
  iowrite32be(val, gate->reg);
 else
  writel(val, gate->reg);
}
