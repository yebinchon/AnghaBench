
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axi_clkgen {scalar_t__ base; } ;


 unsigned int readl (scalar_t__) ;

__attribute__((used)) static void axi_clkgen_read(struct axi_clkgen *axi_clkgen,
 unsigned int reg, unsigned int *val)
{
 *val = readl(axi_clkgen->base + reg);
}
