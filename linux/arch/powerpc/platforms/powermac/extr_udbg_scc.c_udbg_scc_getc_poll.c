
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCC_RXRDY ;
 int in_8 (scalar_t__) ;
 scalar_t__ sccc ;
 scalar_t__ sccd ;

__attribute__((used)) static int udbg_scc_getc_poll(void)
{
 if (sccc) {
  if ((in_8(sccc) & SCC_RXRDY) != 0)
   return in_8(sccd);
  else
   return -1;
 }
 return -1;
}
