
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct work_registers {int r3; int r2; int r1; } ;
struct uasm_reloc {int dummy; } ;
struct uasm_label {int dummy; } ;


 int C0_BADVADDR ;
 int C0_INDEX ;
 scalar_t__ PAGE_SHIFT ;
 scalar_t__ PTE_ORDER ;
 int PTE_T_LOG2 ;
 int PTRS_PER_PTE ;
 int UASM_i_ADDU (int **,int ,int ,int ) ;
 int UASM_i_LW (int **,int ,int ,int ) ;
 int UASM_i_MFC0 (int **,int ,int ) ;
 int UASM_i_SRL (int **,int ,int ,scalar_t__) ;
 int build_get_pgde32 (int **,int ,int ) ;
 int build_get_pmde64 (int **,struct uasm_label**,struct uasm_reloc**,int ,int ) ;
 struct work_registers build_get_work_registers (int **) ;
 int build_is_huge_pte (int **,struct uasm_reloc**,int ,int ,int ) ;
 int build_tlb_probe_entry (int **) ;
 scalar_t__ cpu_has_tlbex_tlbp_race () ;
 int iPTE_LW (int **,int ,int ) ;
 int label_leave ;
 int label_tlb_huge_update ;
 int m4kc_tlbp_war () ;
 int uasm_i_andi (int **,int ,int ,int) ;
 int uasm_i_ehb (int **) ;
 int uasm_i_mfc0 (int **,int ,int ) ;
 int uasm_i_nop (int **) ;
 int uasm_il_bltz (int **,struct uasm_reloc**,int ,int ) ;
 int uasm_l_smp_pgtable_change (struct uasm_label**,int *) ;

__attribute__((used)) static struct work_registers
build_r4000_tlbchange_handler_head(u32 **p, struct uasm_label **l,
       struct uasm_reloc **r)
{
 struct work_registers wr = build_get_work_registers(p);




 build_get_pgde32(p, wr.r1, wr.r2);
 UASM_i_MFC0(p, wr.r1, C0_BADVADDR);
 UASM_i_LW(p, wr.r2, 0, wr.r2);
 UASM_i_SRL(p, wr.r1, wr.r1, PAGE_SHIFT + PTE_ORDER - PTE_T_LOG2);
 uasm_i_andi(p, wr.r1, wr.r1, (PTRS_PER_PTE - 1) << PTE_T_LOG2);
 UASM_i_ADDU(p, wr.r2, wr.r2, wr.r1);




 iPTE_LW(p, wr.r1, wr.r2);
 if (!m4kc_tlbp_war()) {
  build_tlb_probe_entry(p);
  if (cpu_has_tlbex_tlbp_race()) {

   uasm_i_ehb(p);
   uasm_i_mfc0(p, wr.r3, C0_INDEX);
   uasm_il_bltz(p, r, wr.r3, label_leave);
   uasm_i_nop(p);
  }
 }
 return wr;
}
