
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {unsigned int bits; int module; } ;


 int SYSCTL_ACT ;
 int SYSCTL_ACTS ;
 int SYSCTL_CLKEN ;
 int SYSCTL_RBT ;
 unsigned int sysctl_r32 (int ,int ) ;
 int sysctl_w32 (int ,unsigned int,int ) ;
 int sysctl_wait (struct clk*,unsigned int,int ) ;

__attribute__((used)) static void sysctl_reboot(struct clk *clk)
{
 unsigned int act;
 unsigned int bits;

 act = sysctl_r32(clk->module, SYSCTL_ACT);
 bits = ~act & clk->bits;
 if (bits != 0) {
  sysctl_w32(clk->module, bits, SYSCTL_CLKEN);
  sysctl_w32(clk->module, bits, SYSCTL_ACT);
  sysctl_wait(clk, bits, SYSCTL_ACTS);
 }
 sysctl_w32(clk->module, act & clk->bits, SYSCTL_RBT);
 sysctl_wait(clk, clk->bits, SYSCTL_ACTS);
}
