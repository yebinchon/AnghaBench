
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_state {int cr0; int cr1; } ;


 int SSCR0_SSE ;
 int SSSR_ROR ;
 int Ser4SSCR0 ;
 int Ser4SSCR1 ;
 int Ser4SSSR ;

void ssp_restore_state(struct ssp_state *ssp)
{
 Ser4SSSR = SSSR_ROR;

 Ser4SSCR0 = ssp->cr0 & ~SSCR0_SSE;
 Ser4SSCR1 = ssp->cr1;
 Ser4SSCR0 = ssp->cr0;
}
