
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uasm_reloc {int dummy; } ;
typedef enum label_id { ____Placeholder_label_id } label_id ;


 int _PAGE_WRITE ;
 int _PAGE_WRITE_SHIFT ;
 int iPTE_LW (int **,unsigned int,unsigned int) ;
 int ilog2 (int ) ;
 int uasm_i_andi (int **,int,int,int) ;
 int uasm_i_nop (int **) ;
 int uasm_i_srl (int **,int,unsigned int,int ) ;
 int uasm_il_bbit0 (int **,struct uasm_reloc**,unsigned int,int ,int) ;
 int uasm_il_beqz (int **,struct uasm_reloc**,int,int) ;
 scalar_t__ use_bbit_insns () ;

__attribute__((used)) static void
build_pte_modifiable(u32 **p, struct uasm_reloc **r,
       unsigned int pte, unsigned int ptr, int scratch,
       enum label_id lid)
{
 if (use_bbit_insns()) {
  uasm_il_bbit0(p, r, pte, ilog2(_PAGE_WRITE), lid);
  uasm_i_nop(p);
 } else {
  int t = scratch >= 0 ? scratch : pte;
  uasm_i_srl(p, t, pte, _PAGE_WRITE_SHIFT);
  uasm_i_andi(p, t, t, 1);
  uasm_il_beqz(p, r, t, lid);
  if (pte == t)

   iPTE_LW(p, pte, ptr);
 }
}
