
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {unsigned int bits; int module; } ;


 int pr_err (char*,int ,unsigned int,unsigned int,unsigned int) ;
 unsigned int sysctl_r32 (int ,unsigned int) ;

__attribute__((used)) static inline void sysctl_wait(struct clk *clk,
  unsigned int test, unsigned int reg)
{
 int err = 1000000;

 do {} while (--err && ((sysctl_r32(clk->module, reg)
     & clk->bits) != test));
 if (!err)
  pr_err("module de/activation failed %d %08X %08X %08X\n",
   clk->module, clk->bits, test,
   sysctl_r32(clk->module, reg) & clk->bits);
}
