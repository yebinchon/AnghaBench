
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_mips {int options; } ;


 int MIPS_CPU_DRG ;
 int MIPS_CPU_GUESTCTL0EXT ;
 int MIPS_CPU_GUESTCTL1 ;
 int MIPS_CPU_GUESTCTL2 ;
 int MIPS_CPU_GUESTID ;
 unsigned int MIPS_GCTL0_DRG ;
 unsigned int MIPS_GCTL0_G0E ;
 unsigned int MIPS_GCTL0_G1 ;
 unsigned int MIPS_GCTL0_G2 ;
 unsigned int MIPS_GCTL0_RAD ;
 int back_to_back_c0_hazard () ;
 unsigned int read_c0_guestctl0 () ;
 int tlbw_use_hazard () ;
 int write_c0_guestctl0 (unsigned int) ;
 int write_c0_guestctl1 (int ) ;

__attribute__((used)) static inline void cpu_probe_guestctl0(struct cpuinfo_mips *c)
{
 unsigned int guestctl0, temp;

 guestctl0 = read_c0_guestctl0();

 if (guestctl0 & MIPS_GCTL0_G0E)
  c->options |= MIPS_CPU_GUESTCTL0EXT;
 if (guestctl0 & MIPS_GCTL0_G1)
  c->options |= MIPS_CPU_GUESTCTL1;
 if (guestctl0 & MIPS_GCTL0_G2)
  c->options |= MIPS_CPU_GUESTCTL2;
 if (!(guestctl0 & MIPS_GCTL0_RAD)) {
  c->options |= MIPS_CPU_GUESTID;






  write_c0_guestctl1(0);
  tlbw_use_hazard();

  write_c0_guestctl0(guestctl0 | MIPS_GCTL0_DRG);
  back_to_back_c0_hazard();
  temp = read_c0_guestctl0();

  if (temp & MIPS_GCTL0_DRG) {
   write_c0_guestctl0(guestctl0);
   c->options |= MIPS_CPU_DRG;
  }
 }
}
