
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uasm_reloc {int dummy; } ;
struct uasm_label {int dummy; } ;


 int C0_ENTRYLO0 ;
 int C0_EPC ;
 int C0_INDEX ;
 int label_r3000_write_probe_fail ;
 int uasm_i_jr (int **,unsigned int) ;
 int uasm_i_mfc0 (int **,unsigned int,int ) ;
 int uasm_i_mtc0 (int **,unsigned int,int ) ;
 int uasm_i_rfe (int **) ;
 int uasm_i_tlbwi (int **) ;
 int uasm_i_tlbwr (int **) ;
 int uasm_il_bltz (int **,struct uasm_reloc**,unsigned int,int ) ;
 int uasm_l_r3000_write_probe_fail (struct uasm_label**,int *) ;

__attribute__((used)) static void
build_r3000_tlb_reload_write(u32 **p, struct uasm_label **l,
        struct uasm_reloc **r, unsigned int pte,
        unsigned int tmp)
{
 uasm_i_mfc0(p, tmp, C0_INDEX);
 uasm_i_mtc0(p, pte, C0_ENTRYLO0);
 uasm_il_bltz(p, r, tmp, label_r3000_write_probe_fail);
 uasm_i_mfc0(p, tmp, C0_EPC);
 uasm_i_tlbwi(p);
 uasm_i_jr(p, tmp);
 uasm_i_rfe(p);
 uasm_l_r3000_write_probe_fail(l, *p);
 uasm_i_tlbwr(p);
 uasm_i_jr(p, tmp);
 uasm_i_rfe(p);
}
