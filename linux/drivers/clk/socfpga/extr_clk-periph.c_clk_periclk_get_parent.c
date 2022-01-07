
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct clk_hw {int dummy; } ;


 scalar_t__ CLKMGR_DBCTRL ;
 scalar_t__ clk_mgr_base_addr ;
 int readl (scalar_t__) ;

__attribute__((used)) static u8 clk_periclk_get_parent(struct clk_hw *hwclk)
{
 u32 clk_src;

 clk_src = readl(clk_mgr_base_addr + CLKMGR_DBCTRL);
 return clk_src & 0x1;
}
