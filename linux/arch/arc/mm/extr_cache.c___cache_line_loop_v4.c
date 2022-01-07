
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef unsigned long phys_addr_t ;


 unsigned int ARC_REG_DC_FLDL ;
 unsigned int ARC_REG_DC_IVDL ;
 unsigned int ARC_REG_DC_PTAG_HI ;
 unsigned int ARC_REG_IC_IVIL ;
 unsigned int ARC_REG_IC_PTAG_HI ;
 unsigned long CACHE_LINE_MASK ;
 int DIV_ROUND_UP (unsigned long,scalar_t__) ;
 scalar_t__ L1_CACHE_BYTES ;
 int const OP_INV ;
 int const OP_INV_IC ;
 scalar_t__ is_pae40_enabled () ;
 int write_aux_reg (unsigned int,unsigned long) ;

__attribute__((used)) static inline
void __cache_line_loop_v4(phys_addr_t paddr, unsigned long vaddr,
     unsigned long sz, const int op, const int full_page)
{
 unsigned int aux_cmd;
 int num_lines;

 if (op == OP_INV_IC) {
  aux_cmd = ARC_REG_IC_IVIL;
 } else {

  aux_cmd = op & OP_INV ? ARC_REG_DC_IVDL : ARC_REG_DC_FLDL;
 }







 if (!full_page) {
  sz += paddr & ~CACHE_LINE_MASK;
  paddr &= CACHE_LINE_MASK;
 }

 num_lines = DIV_ROUND_UP(sz, L1_CACHE_BYTES);






 if (is_pae40_enabled()) {
  if (op == OP_INV_IC)




   write_aux_reg(ARC_REG_IC_PTAG_HI, (u64)paddr >> 32);
  else
   write_aux_reg(ARC_REG_DC_PTAG_HI, (u64)paddr >> 32);
 }

 while (num_lines-- > 0) {
  write_aux_reg(aux_cmd, paddr);
  paddr += L1_CACHE_BYTES;
 }
}
