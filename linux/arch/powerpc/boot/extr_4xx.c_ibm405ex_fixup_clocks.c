
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CPR0_READ (int ) ;
 int DCRN_CPR0_OPBD ;
 int DCRN_CPR0_PERD ;
 int DCRN_CPR0_PLLC ;
 int DCRN_CPR0_PLLD ;
 int DCRN_CPR0_PRIMAD ;
 int DCRN_CPR0_PRIMBD ;
 int __fix_zero (int,int) ;
 int dt_fixup_clock (char*,int) ;
 int dt_fixup_cpu_clocks (int,int,int ) ;
 int ibm405ex_get_fbdv (int) ;
 int ibm405ex_get_fwdva (int) ;
 int printf (char*) ;

void ibm405ex_fixup_clocks(unsigned int sys_clk, unsigned int uart_clk)
{

 u32 pllc = CPR0_READ(DCRN_CPR0_PLLC);
 u32 plld = CPR0_READ(DCRN_CPR0_PLLD);
 u32 cpud = CPR0_READ(DCRN_CPR0_PRIMAD);
 u32 plbd = CPR0_READ(DCRN_CPR0_PRIMBD);
 u32 opbd = CPR0_READ(DCRN_CPR0_OPBD);
 u32 perd = CPR0_READ(DCRN_CPR0_PERD);


 u32 fbdv = ibm405ex_get_fbdv(__fix_zero((plld >> 24) & 0xff, 1));

 u32 fwdva = ibm405ex_get_fwdva(__fix_zero((plld >> 16) & 0x0f, 1));

 u32 cpudv0 = __fix_zero((cpud >> 24) & 7, 8);


 u32 plbdv0 = 2;
 u32 plb2xdv0 = __fix_zero((plbd >> 16) & 7, 8);

 u32 opbdv0 = __fix_zero((opbd >> 24) & 3, 4);

 u32 perdv0 = __fix_zero((perd >> 24) & 3, 4);


 u32 cpu, plb, opb, ebc, vco, tb, uart0, uart1;


 if (pllc & 0x40000000) {
  u32 m;


  switch ((pllc >> 24) & 7) {
  case 0:

   m = fbdv;
   break;
  case 1:

   m = fbdv * fwdva * cpudv0;
   break;
  case 5:

   m = fbdv * fwdva * plb2xdv0 * plbdv0 * opbdv0 * perdv0;
   break;
  default:
   printf("WARNING ! Invalid PLL feedback source !\n");
   goto bypass;
  }

  vco = (unsigned int)(sys_clk * m);
 } else {
bypass:

  vco = 0;
 }


 cpu = vco / (fwdva * cpudv0);

 plb = vco / (fwdva * plb2xdv0 * plbdv0);

 opb = plb / opbdv0;

 ebc = opb / perdv0;

 tb = cpu;
 uart0 = uart1 = uart_clk;

 dt_fixup_cpu_clocks(cpu, tb, 0);
 dt_fixup_clock("/plb", plb);
 dt_fixup_clock("/plb/opb", opb);
 dt_fixup_clock("/plb/opb/ebc", ebc);
 dt_fixup_clock("/plb/opb/serial@ef600200", uart0);
 dt_fixup_clock("/plb/opb/serial@ef600300", uart1);
}
