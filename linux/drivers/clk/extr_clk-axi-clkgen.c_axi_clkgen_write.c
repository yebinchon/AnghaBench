
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axi_clkgen {scalar_t__ base; } ;


 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void axi_clkgen_write(struct axi_clkgen *axi_clkgen,
 unsigned int reg, unsigned int val)
{
 writel(val, axi_clkgen->base + reg);
}
