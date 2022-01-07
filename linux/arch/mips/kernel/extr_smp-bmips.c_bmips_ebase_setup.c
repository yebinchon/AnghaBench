
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BMIPS_WARM_RESTART_VEC ;
 int BUG_ON (int) ;
 unsigned long CKSEG0 ;




 int RESET_FROM_KSEG0 ;
 int __sync () ;
 int bmips_nmi_handler_setup ;
 int bmips_set_reset_vec (int ,int ) ;
 int bmips_smp_int_vec ;
 int * board_nmi_handler_setup ;
 int current_cpu_type () ;
 unsigned long ebase ;
 int set_uncached_handler (int ,int *,int) ;
 int write_c0_ebase (unsigned long) ;

void bmips_ebase_setup(void)
{
 unsigned long new_ebase = ebase;

 BUG_ON(ebase != CKSEG0);

 switch (current_cpu_type()) {
 case 130:
  set_uncached_handler(BMIPS_WARM_RESTART_VEC - CKSEG0,
   &bmips_smp_int_vec, 0x80);
  __sync();
  return;
 case 131:
 case 129:




  new_ebase = 0x80000400;
  bmips_set_reset_vec(0, RESET_FROM_KSEG0);
  break;
 case 128:




  new_ebase = 0x80001000;
  bmips_set_reset_vec(0, RESET_FROM_KSEG0);
  write_c0_ebase(new_ebase);
  break;
 default:
  return;
 }

 board_nmi_handler_setup = &bmips_nmi_handler_setup;
 ebase = new_ebase;
}
