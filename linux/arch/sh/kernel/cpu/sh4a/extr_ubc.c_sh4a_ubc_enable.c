
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arch_hw_breakpoint {int len; int type; int address; } ;


 int UBC_CAR (int) ;
 int UBC_CBR (int) ;
 int UBC_CBR_CE ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static void sh4a_ubc_enable(struct arch_hw_breakpoint *info, int idx)
{
 __raw_writel(UBC_CBR_CE | info->len | info->type, UBC_CBR(idx));
 __raw_writel(info->address, UBC_CAR(idx));
}
