
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 struct clk* cpu_clk_generic ;

struct clk *clk_get_io(void)
{
 return &cpu_clk_generic[2];
}
