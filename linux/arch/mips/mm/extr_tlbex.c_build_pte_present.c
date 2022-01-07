
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uasm_reloc {int dummy; } ;
typedef enum label_id { ____Placeholder_label_id } label_id ;


 int _PAGE_NO_READ ;
 int _PAGE_PRESENT ;
 int _PAGE_PRESENT_SHIFT ;
 scalar_t__ cpu_has_rixi ;
 int iPTE_LW (int **,int,int) ;
 int ilog2 (int) ;
 int uasm_i_andi (int **,int,int,int) ;
 int uasm_i_nop (int **) ;
 int uasm_i_srl (int **,int,int,int) ;
 int uasm_i_xori (int **,int,int,int) ;
 int uasm_il_bbit0 (int **,struct uasm_reloc**,int,int ,int) ;
 int uasm_il_beqz (int **,struct uasm_reloc**,int,int) ;
 int uasm_il_bnez (int **,struct uasm_reloc**,int,int) ;
 scalar_t__ use_bbit_insns () ;

__attribute__((used)) static void
build_pte_present(u32 **p, struct uasm_reloc **r,
    int pte, int ptr, int scratch, enum label_id lid)
{
 int t = scratch >= 0 ? scratch : pte;
 int cur = pte;

 if (cpu_has_rixi) {
  if (use_bbit_insns()) {
   uasm_il_bbit0(p, r, pte, ilog2(_PAGE_PRESENT), lid);
   uasm_i_nop(p);
  } else {
   if (_PAGE_PRESENT_SHIFT) {
    uasm_i_srl(p, t, cur, _PAGE_PRESENT_SHIFT);
    cur = t;
   }
   uasm_i_andi(p, t, cur, 1);
   uasm_il_beqz(p, r, t, lid);
   if (pte == t)

    iPTE_LW(p, pte, ptr);
  }
 } else {
  if (_PAGE_PRESENT_SHIFT) {
   uasm_i_srl(p, t, cur, _PAGE_PRESENT_SHIFT);
   cur = t;
  }
  uasm_i_andi(p, t, cur,
   (_PAGE_PRESENT | _PAGE_NO_READ) >> _PAGE_PRESENT_SHIFT);
  uasm_i_xori(p, t, t, _PAGE_PRESENT >> _PAGE_PRESENT_SHIFT);
  uasm_il_bnez(p, r, t, lid);
  if (pte == t)

   iPTE_LW(p, pte, ptr);
 }
}
