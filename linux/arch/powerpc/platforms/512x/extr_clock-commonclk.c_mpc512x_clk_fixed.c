
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 struct clk* clk_register_fixed_rate (int *,char const*,int *,int ,int) ;

__attribute__((used)) static inline struct clk *mpc512x_clk_fixed(const char *name, int rate)
{
 return clk_register_fixed_rate(((void*)0), name, ((void*)0), 0, rate);
}
