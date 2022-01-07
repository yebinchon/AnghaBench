
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int C0_BADVADDR ;
 int C0_CONTEXT ;
 scalar_t__ pgd_current ;
 int uasm_i_addu (int **,unsigned int,unsigned int,unsigned int) ;
 int uasm_i_andi (int **,unsigned int,unsigned int,int) ;
 int uasm_i_lui (int **,unsigned int,int ) ;
 int uasm_i_lw (int **,unsigned int,int ,unsigned int) ;
 int uasm_i_mfc0 (int **,unsigned int,int ) ;
 int uasm_i_sll (int **,unsigned int,unsigned int,int) ;
 int uasm_i_srl (int **,unsigned int,unsigned int,int) ;
 int uasm_i_tlbp (int **) ;
 int uasm_rel_hi (long) ;
 int uasm_rel_lo (long) ;

__attribute__((used)) static void
build_r3000_tlbchange_handler_head(u32 **p, unsigned int pte,
       unsigned int ptr)
{
 long pgdc = (long)pgd_current;

 uasm_i_mfc0(p, pte, C0_BADVADDR);
 uasm_i_lui(p, ptr, uasm_rel_hi(pgdc));
 uasm_i_lw(p, ptr, uasm_rel_lo(pgdc), ptr);
 uasm_i_srl(p, pte, pte, 22);
 uasm_i_sll(p, pte, pte, 2);
 uasm_i_addu(p, ptr, ptr, pte);
 uasm_i_mfc0(p, pte, C0_CONTEXT);
 uasm_i_lw(p, ptr, 0, ptr);
 uasm_i_andi(p, pte, pte, 0xffc);
 uasm_i_addu(p, ptr, ptr, pte);
 uasm_i_lw(p, pte, 0, ptr);
 uasm_i_tlbp(p);
}
