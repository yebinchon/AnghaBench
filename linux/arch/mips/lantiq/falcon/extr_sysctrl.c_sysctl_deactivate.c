
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int bits; int module; } ;


 int SYSCTL_ACTS ;
 int SYSCTL_CLKCLR ;
 int SYSCTL_DEACT ;
 int sysctl_w32 (int ,int ,int ) ;
 int sysctl_wait (struct clk*,int ,int ) ;

__attribute__((used)) static void sysctl_deactivate(struct clk *clk)
{
 sysctl_w32(clk->module, clk->bits, SYSCTL_CLKCLR);
 sysctl_w32(clk->module, clk->bits, SYSCTL_DEACT);
 sysctl_wait(clk, 0, SYSCTL_ACTS);
}
