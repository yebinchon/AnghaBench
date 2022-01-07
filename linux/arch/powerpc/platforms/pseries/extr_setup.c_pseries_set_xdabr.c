
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long DABRX_KERNEL ;
 unsigned long DABRX_USER ;
 int H_SET_XDABR ;
 int plpar_hcall_norets (int ,unsigned long,unsigned long) ;

__attribute__((used)) static int pseries_set_xdabr(unsigned long dabr, unsigned long dabrx)
{

 if (dabrx == 0 && dabr == 0)
  dabrx = DABRX_USER;

 dabrx &= DABRX_KERNEL | DABRX_USER;

 return plpar_hcall_norets(H_SET_XDABR, dabr, dabrx);
}
