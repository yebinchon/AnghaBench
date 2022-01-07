
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long DAWRX_HYP ;
 int plpar_set_watchpoint0 (unsigned long,unsigned long) ;

__attribute__((used)) static int pseries_set_dawr(unsigned long dawr, unsigned long dawrx)
{

 dawrx &= ~DAWRX_HYP;

 return plpar_set_watchpoint0(dawr, dawrx);
}
