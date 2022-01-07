
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ base; } ;


 TYPE_1__ dscr ;
 int soc_writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void dscr_write_locked2(u32 reg, u32 val,
          u32 lock0, u32 key0,
          u32 lock1, u32 key1)
{
 soc_writel(key0, dscr.base + lock0);
 soc_writel(key1, dscr.base + lock1);
 soc_writel(val, dscr.base + reg);
 soc_writel(0, dscr.base + lock0);
 soc_writel(0, dscr.base + lock1);
}
