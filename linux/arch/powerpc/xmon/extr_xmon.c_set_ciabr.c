
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CIABR_PRIV ;
 unsigned long CIABR_PRIV_HYPER ;
 unsigned long CIABR_PRIV_SUPER ;
 int CPU_FTR_HVMODE ;
 scalar_t__ cpu_has_feature (int ) ;
 int write_ciabr (unsigned long) ;

__attribute__((used)) static void set_ciabr(unsigned long addr)
{
 addr &= ~CIABR_PRIV;

 if (cpu_has_feature(CPU_FTR_HVMODE))
  addr |= CIABR_PRIV_HYPER;
 else
  addr |= CIABR_PRIV_SUPER;
 write_ciabr(addr);
}
