
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SSCR0_SSE ;
 int Ser4SSCR0 ;

void ssp_disable(void)
{
 Ser4SSCR0 &= ~SSCR0_SSE;
}
