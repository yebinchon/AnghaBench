
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int uasm_i_daddiu (int **,unsigned int,unsigned int,scalar_t__) ;
 int uasm_i_dsll (int **,unsigned int,unsigned int,int) ;
 int uasm_i_dsll32 (int **,unsigned int,unsigned int,int ) ;
 int uasm_i_lui (int **,unsigned int,scalar_t__) ;
 int uasm_in_compat_space_p (long) ;
 scalar_t__ uasm_rel_hi (long) ;
 scalar_t__ uasm_rel_higher (long) ;
 scalar_t__ uasm_rel_highest (long) ;

void UASM_i_LA_mostly(u32 **buf, unsigned int rs, long addr)
{
 if (!uasm_in_compat_space_p(addr)) {
  uasm_i_lui(buf, rs, uasm_rel_highest(addr));
  if (uasm_rel_higher(addr))
   uasm_i_daddiu(buf, rs, rs, uasm_rel_higher(addr));
  if (uasm_rel_hi(addr)) {
   uasm_i_dsll(buf, rs, rs, 16);
   uasm_i_daddiu(buf, rs, rs,
     uasm_rel_hi(addr));
   uasm_i_dsll(buf, rs, rs, 16);
  } else
   uasm_i_dsll32(buf, rs, rs, 0);
 } else
  uasm_i_lui(buf, rs, uasm_rel_hi(addr));
}
