
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CMPCR ;
 int SYS_CTR_EN ;
 int cmpcr ;
 scalar_t__ sys_ctr_base ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void sysctr_timer_enable(bool enable)
{
 writel(enable ? cmpcr | SYS_CTR_EN : cmpcr, sys_ctr_base + CMPCR);
}
