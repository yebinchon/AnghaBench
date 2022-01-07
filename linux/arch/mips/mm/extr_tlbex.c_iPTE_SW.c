
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uasm_reloc {int dummy; } ;
typedef int pte_t ;


 int BUG_ON (unsigned int) ;
 int CONFIG_XPA ;
 scalar_t__ IS_ENABLED (int ) ;
 int UASM_i_SC (int **,unsigned int,int ,unsigned int) ;
 int UASM_i_SW (int **,unsigned int,int ,unsigned int) ;
 unsigned int _PAGE_DIRTY ;
 unsigned int _PAGE_VALID ;
 scalar_t__ cpu_has_64bits ;
 int label_smp_pgtable_change ;
 scalar_t__ r10000_llsc_war () ;
 int uasm_i_ll (int **,unsigned int,int,unsigned int) ;
 int uasm_i_lui (int **,unsigned int,unsigned int) ;
 int uasm_i_lw (int **,unsigned int,int,unsigned int) ;
 int uasm_i_nop (int **) ;
 int uasm_i_or (int **,unsigned int,unsigned int,unsigned int) ;
 int uasm_i_ori (int **,unsigned int,unsigned int,unsigned int) ;
 int uasm_i_sc (int **,unsigned int,int,unsigned int) ;
 int uasm_i_scd (int **,unsigned int,int ,unsigned int) ;
 int uasm_i_sd (int **,unsigned int,int ,unsigned int) ;
 int uasm_i_sw (int **,unsigned int,int,unsigned int) ;
 int uasm_il_beqz (int **,struct uasm_reloc**,unsigned int,int ) ;
 int uasm_il_beqzl (int **,struct uasm_reloc**,unsigned int,int ) ;

__attribute__((used)) static void
iPTE_SW(u32 **p, struct uasm_reloc **r, unsigned int pte, unsigned int ptr,
 unsigned int mode, unsigned int scratch)
{
 unsigned int hwmode = mode & (_PAGE_VALID | _PAGE_DIRTY);
 unsigned int swmode = mode & ~hwmode;

 if (IS_ENABLED(CONFIG_XPA) && !cpu_has_64bits) {
  uasm_i_lui(p, scratch, swmode >> 16);
  uasm_i_or(p, pte, pte, scratch);
  BUG_ON(swmode & 0xffff);
 } else {
  uasm_i_ori(p, pte, pte, mode);
 }
  UASM_i_SW(p, pte, 0, ptr);
}
