
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int (* set ) (struct clk*,int) ;int usage; } ;


 int stub1 (struct clk*,int) ;

__attribute__((used)) static void clk_enable_unlocked(struct clk *clk)
{
 if (clk->set && (clk->usage++) == 0)
  clk->set(clk, 1);
}
