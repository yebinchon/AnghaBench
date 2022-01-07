
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_mips {int guestid_mask; } ;


 int MIPS_GCTL1_ID ;
 int MIPS_GCTL1_ID_SHIFT ;
 int back_to_back_c0_hazard () ;
 scalar_t__ cpu_has_guestid ;
 int read_c0_guestctl1 () ;
 int write_c0_guestctl1 (int) ;

__attribute__((used)) static inline void cpu_probe_guestctl1(struct cpuinfo_mips *c)
{
 if (cpu_has_guestid) {

  write_c0_guestctl1(MIPS_GCTL1_ID);
  back_to_back_c0_hazard();
  c->guestid_mask = (read_c0_guestctl1() & MIPS_GCTL1_ID)
      >> MIPS_GCTL1_ID_SHIFT;
  write_c0_guestctl1(0);
 }
}
