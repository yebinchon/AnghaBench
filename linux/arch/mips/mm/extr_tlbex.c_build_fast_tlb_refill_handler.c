
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uasm_reloc {int dummy; } ;
struct uasm_label {int dummy; } ;
struct mips_huge_tlb_info {int huge_pte; int restore_scratch; int need_reload_pte; } ;
typedef int pte_t ;


 int C0_BADVADDR ;
 int C0_CONTEXT ;
 int C0_ENTRYLO0 ;
 int C0_ENTRYLO1 ;
 int GET_CONTEXT (int **,unsigned int) ;
 unsigned int LOC_PTEP ;
 int PAGE_SHIFT ;
 int PGDIR_SHIFT ;
 int PGD_ORDER ;
 int PMD_SHIFT ;
 int PTRS_PER_PGD ;
 int PTRS_PER_PMD ;
 int PTRS_PER_PUD ;
 int PUD_SHIFT ;
 int UASM_i_ADDIU (int **,unsigned int,unsigned int,int) ;
 int UASM_i_ADDU (int **,unsigned int,int const,unsigned int) ;
 int UASM_i_LW (int **,int const,int,unsigned int) ;
 int UASM_i_LWX (int **,int const,int const,unsigned int) ;
 int UASM_i_MFC0 (int **,int const,int ,...) ;
 int UASM_i_MTC0 (int **,int const,int ,...) ;
 int UASM_i_SW (int **,int const,int,int ) ;
 int _PAGE_GLOBAL ;
 int _PAGE_HUGE ;
 int build_adjust_context (int **,unsigned int) ;
 int build_tlb_write_entry (int **,struct uasm_label**,struct uasm_reloc**,int ) ;
 int c0_kscratch () ;
 scalar_t__ check_for_high_segbits ;
 scalar_t__ cpu_has_rixi ;
 int ilog2 (int ) ;
 int label_tlb_huge_update ;
 int label_vmalloc ;
 int pgd_reg ;
 int scratchpad_offset (int ) ;
 int tlb_random ;
 int uasm_i_andi (int **,int const,int const,int) ;
 int uasm_i_daddu (int **,unsigned int,unsigned int,int const) ;
 int uasm_i_dins (int **,unsigned int,int ,int ,int) ;
 int uasm_i_drotr (int **,unsigned int,unsigned int,int) ;
 int uasm_i_dsrl_safe (int **,int const,unsigned int,int) ;
 int uasm_i_ehb (int **) ;
 int uasm_i_eret (int **) ;
 int uasm_i_ld (int **,unsigned int,int ,unsigned int) ;
 int uasm_i_nop (int **) ;
 int uasm_i_ori (int **,unsigned int,unsigned int,int) ;
 int uasm_il_bbit1 (int **,struct uasm_reloc**,int const,int,int ) ;
 int uasm_il_bltz (int **,struct uasm_reloc**,unsigned int,int ) ;
 int uasm_il_bnez (int **,struct uasm_reloc**,int const,int ) ;
 int uasm_l_leave (struct uasm_label**,int *) ;
 int uasm_l_vmalloc_done (struct uasm_label**,int *) ;
 scalar_t__ use_lwx_insns () ;

__attribute__((used)) static struct mips_huge_tlb_info
build_fast_tlb_refill_handler (u32 **p, struct uasm_label **l,
          struct uasm_reloc **r, unsigned int tmp,
          unsigned int ptr, int c0_scratch_reg)
{
 struct mips_huge_tlb_info rv;
 unsigned int even, odd;
 int vmalloc_branch_delay_filled = 0;
 const int scratch = 1;

 rv.huge_pte = scratch;
 rv.restore_scratch = 0;
 rv.need_reload_pte = 0;

 if (check_for_high_segbits) {
  UASM_i_MFC0(p, tmp, C0_BADVADDR);

  if (pgd_reg != -1)
   UASM_i_MFC0(p, ptr, c0_kscratch(), pgd_reg);
  else
   UASM_i_MFC0(p, ptr, C0_CONTEXT);

  if (c0_scratch_reg >= 0)
   UASM_i_MTC0(p, scratch, c0_kscratch(), c0_scratch_reg);
  else
   UASM_i_SW(p, scratch, scratchpad_offset(0), 0);

  uasm_i_dsrl_safe(p, scratch, tmp,
     PGDIR_SHIFT + PGD_ORDER + PAGE_SHIFT - 3);
  uasm_il_bnez(p, r, scratch, label_vmalloc);

  if (pgd_reg == -1) {
   vmalloc_branch_delay_filled = 1;

   uasm_i_dins(p, ptr, 0, 0, 23);
  }
 } else {
  if (pgd_reg != -1)
   UASM_i_MFC0(p, ptr, c0_kscratch(), pgd_reg);
  else
   UASM_i_MFC0(p, ptr, C0_CONTEXT);

  UASM_i_MFC0(p, tmp, C0_BADVADDR);

  if (c0_scratch_reg >= 0)
   UASM_i_MTC0(p, scratch, c0_kscratch(), c0_scratch_reg);
  else
   UASM_i_SW(p, scratch, scratchpad_offset(0), 0);

  if (pgd_reg == -1)

   uasm_i_dins(p, ptr, 0, 0, 23);

  uasm_il_bltz(p, r, tmp, label_vmalloc);
 }

 if (pgd_reg == -1) {
  vmalloc_branch_delay_filled = 1;

  uasm_i_ori(p, ptr, ptr, 0x540);
  uasm_i_drotr(p, ptr, ptr, 11);
 }







 if (!vmalloc_branch_delay_filled)

  uasm_i_dsrl_safe(p, scratch, tmp, PGDIR_SHIFT - 3);

 uasm_l_vmalloc_done(l, *p);







 if (vmalloc_branch_delay_filled)

  uasm_i_dsrl_safe(p, scratch, tmp, PGDIR_SHIFT - 3);




 uasm_i_andi(p, scratch, scratch, (PTRS_PER_PGD - 1) << 3);

 if (use_lwx_insns()) {
  UASM_i_LWX(p, ptr, scratch, ptr);
 } else {
  uasm_i_daddu(p, ptr, ptr, scratch);
  uasm_i_ld(p, ptr, 0, ptr);
 }



 uasm_i_dsrl_safe(p, scratch, tmp, PUD_SHIFT - 3);
 uasm_i_andi(p, scratch, scratch, (PTRS_PER_PUD - 1) << 3);

 if (use_lwx_insns()) {
  UASM_i_LWX(p, ptr, scratch, ptr);
 } else {
  uasm_i_daddu(p, ptr, ptr, scratch);
  UASM_i_LW(p, ptr, 0, ptr);
 }






 uasm_i_dsrl_safe(p, scratch, tmp, PMD_SHIFT - 3);
 uasm_i_andi(p, scratch, scratch, (PTRS_PER_PMD - 1) << 3);
 GET_CONTEXT(p, tmp);

 if (use_lwx_insns()) {
  UASM_i_LWX(p, scratch, scratch, ptr);
 } else {
  uasm_i_daddu(p, ptr, ptr, scratch);
  UASM_i_LW(p, scratch, 0, ptr);
 }


 build_adjust_context(p, tmp);
 if (use_lwx_insns()) {
  even = ptr;
  odd = tmp;
  UASM_i_LWX(p, even, scratch, tmp);
  UASM_i_ADDIU(p, tmp, tmp, sizeof(pte_t));
  UASM_i_LWX(p, odd, scratch, tmp);
 } else {
  UASM_i_ADDU(p, ptr, scratch, tmp);
  even = tmp;
  odd = ptr;
  UASM_i_LW(p, even, 0, ptr);
  UASM_i_LW(p, odd, sizeof(pte_t), ptr);
 }
 if (cpu_has_rixi) {
  uasm_i_drotr(p, even, even, ilog2(_PAGE_GLOBAL));
  UASM_i_MTC0(p, even, C0_ENTRYLO0);
  uasm_i_drotr(p, odd, odd, ilog2(_PAGE_GLOBAL));
 } else {
  uasm_i_dsrl_safe(p, even, even, ilog2(_PAGE_GLOBAL));
  UASM_i_MTC0(p, even, C0_ENTRYLO0);
  uasm_i_dsrl_safe(p, odd, odd, ilog2(_PAGE_GLOBAL));
 }
 UASM_i_MTC0(p, odd, C0_ENTRYLO1);

 if (c0_scratch_reg >= 0) {
  uasm_i_ehb(p);
  UASM_i_MFC0(p, scratch, c0_kscratch(), c0_scratch_reg);
  build_tlb_write_entry(p, l, r, tlb_random);
  uasm_l_leave(l, *p);
  rv.restore_scratch = 1;
 } else if (PAGE_SHIFT == 14 || PAGE_SHIFT == 13) {
  build_tlb_write_entry(p, l, r, tlb_random);
  uasm_l_leave(l, *p);
  UASM_i_LW(p, scratch, scratchpad_offset(0), 0);
 } else {
  UASM_i_LW(p, scratch, scratchpad_offset(0), 0);
  build_tlb_write_entry(p, l, r, tlb_random);
  uasm_l_leave(l, *p);
  rv.restore_scratch = 1;
 }

 uasm_i_eret(p);

 return rv;
}
