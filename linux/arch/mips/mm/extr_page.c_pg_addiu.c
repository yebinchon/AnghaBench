
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ DADDI_WAR ;
 int T9 ;
 int UASM_i_ADDIU (int **,unsigned int,unsigned int,unsigned int) ;
 int UASM_i_ADDU (int **,unsigned int,unsigned int,int ) ;
 int ZERO ;
 scalar_t__ cpu_has_64bit_gp_regs ;
 scalar_t__ r4k_daddiu_bug () ;
 int uasm_i_addiu (int **,int ,int ,unsigned int) ;
 int uasm_i_daddu (int **,unsigned int,unsigned int,int ) ;
 int uasm_i_lui (int **,int ,int ) ;
 int uasm_rel_hi (unsigned int) ;
 unsigned int uasm_rel_lo (unsigned int) ;

__attribute__((used)) static inline void
pg_addiu(u32 **buf, unsigned int reg1, unsigned int reg2, unsigned int off)
{
 if (cpu_has_64bit_gp_regs && DADDI_WAR && r4k_daddiu_bug()) {
  if (off > 0x7fff) {
   uasm_i_lui(buf, T9, uasm_rel_hi(off));
   uasm_i_addiu(buf, T9, T9, uasm_rel_lo(off));
  } else
   uasm_i_addiu(buf, T9, ZERO, off);
  uasm_i_daddu(buf, reg1, reg2, T9);
 } else {
  if (off > 0x7fff) {
   uasm_i_lui(buf, T9, uasm_rel_hi(off));
   uasm_i_addiu(buf, T9, T9, uasm_rel_lo(off));
   UASM_i_ADDU(buf, reg1, reg2, T9);
  } else
   UASM_i_ADDIU(buf, reg1, reg2, off);
 }
}
