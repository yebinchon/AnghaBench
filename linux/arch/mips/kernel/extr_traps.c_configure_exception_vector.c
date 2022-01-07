
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAUSEF_IV ;
 int MIPS_EBASE_WG ;
 int ST0_BEV ;
 int VECTORSPACING ;
 int change_c0_intctl (int,int ) ;
 scalar_t__ cpu_has_divec ;
 scalar_t__ cpu_has_ebase_wg ;
 scalar_t__ cpu_has_mips_r2_r6 ;
 scalar_t__ cpu_has_mipsmt ;
 scalar_t__ cpu_has_veic ;
 scalar_t__ cpu_has_vint ;
 unsigned int dvpe () ;
 int ebase ;
 int evpe (unsigned int) ;
 int set_c0_cause (int ) ;
 unsigned long set_c0_status (int ) ;
 int write_c0_ebase (int) ;
 int write_c0_ebase_64 (int) ;
 int write_c0_status (unsigned long) ;

__attribute__((used)) static void configure_exception_vector(void)
{
 if (cpu_has_mips_r2_r6) {
  unsigned long sr = set_c0_status(ST0_BEV);

  if (cpu_has_ebase_wg) {



   write_c0_ebase(ebase | MIPS_EBASE_WG);

  }
  write_c0_ebase(ebase);
  write_c0_status(sr);
 }
 if (cpu_has_veic || cpu_has_vint) {

  change_c0_intctl(0x3e0, VECTORSPACING);
 }
 if (cpu_has_divec) {
  if (cpu_has_mipsmt) {
   unsigned int vpflags = dvpe();
   set_c0_cause(CAUSEF_IV);
   evpe(vpflags);
  } else
   set_c0_cause(CAUSEF_IV);
 }
}
