
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int UASM_i_LA_mostly (int **,unsigned int,long) ;
 int uasm_i_addiu (int **,unsigned int,unsigned int,scalar_t__) ;
 int uasm_i_daddiu (int **,unsigned int,unsigned int,scalar_t__) ;
 int uasm_in_compat_space_p (long) ;
 scalar_t__ uasm_rel_lo (long) ;

void UASM_i_LA(u32 **buf, unsigned int rs, long addr)
{
 UASM_i_LA_mostly(buf, rs, addr);
 if (uasm_rel_lo(addr)) {
  if (!uasm_in_compat_space_p(addr))
   uasm_i_daddiu(buf, rs, rs,
     uasm_rel_lo(addr));
  else
   uasm_i_addiu(buf, rs, rs,
     uasm_rel_lo(addr));
 }
}
