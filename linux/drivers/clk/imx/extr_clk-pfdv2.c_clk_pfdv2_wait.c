
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_pfdv2 {int vld_bit; int reg; } ;


 int LOCK_TIMEOUT_US ;
 int readl_poll_timeout (int ,int,int,int ,int ) ;

__attribute__((used)) static int clk_pfdv2_wait(struct clk_pfdv2 *pfd)
{
 u32 val;

 return readl_poll_timeout(pfd->reg, val, val & (1 << pfd->vld_bit),
      0, LOCK_TIMEOUT_US);
}
