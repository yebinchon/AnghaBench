
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int bits; int module; } ;


 int SYSCTL_ACT ;
 int SYSCTL_ACTS ;
 int SYSCTL_CLKEN ;
 int sysctl_w32 (int ,int ,int ) ;
 int sysctl_wait (struct clk*,int ,int ) ;

__attribute__((used)) static int sysctl_activate(struct clk *clk)
{
 sysctl_w32(clk->module, clk->bits, SYSCTL_CLKEN);
 sysctl_w32(clk->module, clk->bits, SYSCTL_ACT);
 sysctl_wait(clk, clk->bits, SYSCTL_ACTS);
 return 0;
}
