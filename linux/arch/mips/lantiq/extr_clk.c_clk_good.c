
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int IS_ERR (struct clk*) ;

__attribute__((used)) static inline int clk_good(struct clk *clk)
{
 return clk && !IS_ERR(clk);
}
