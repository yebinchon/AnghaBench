
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arch_hw_breakpoint {int dummy; } ;


 int UBC_CAR (int) ;
 int UBC_CBR (int) ;
 int __raw_writel (int ,int ) ;

__attribute__((used)) static void sh4a_ubc_disable(struct arch_hw_breakpoint *info, int idx)
{
 __raw_writel(0, UBC_CBR(idx));
 __raw_writel(0, UBC_CAR(idx));
}
