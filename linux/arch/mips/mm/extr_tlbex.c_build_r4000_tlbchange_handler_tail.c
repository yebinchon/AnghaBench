
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uasm_reloc {int dummy; } ;
struct uasm_label {int dummy; } ;
typedef int pte_t ;


 int build_get_pgd_vmalloc64 (int **,struct uasm_label**,struct uasm_reloc**,unsigned int,unsigned int,int ) ;
 int build_restore_work_registers (int **) ;
 int build_tlb_write_entry (int **,struct uasm_label**,struct uasm_reloc**,int ) ;
 int build_update_entries (int **,unsigned int,unsigned int) ;
 int not_refill ;
 int tlb_indexed ;
 int uasm_i_eret (int **) ;
 int uasm_i_ori (int **,unsigned int,unsigned int,int) ;
 int uasm_i_xori (int **,unsigned int,unsigned int,int) ;
 int uasm_l_leave (struct uasm_label**,int *) ;

__attribute__((used)) static void
build_r4000_tlbchange_handler_tail(u32 **p, struct uasm_label **l,
       struct uasm_reloc **r, unsigned int tmp,
       unsigned int ptr)
{
 uasm_i_ori(p, ptr, ptr, sizeof(pte_t));
 uasm_i_xori(p, ptr, ptr, sizeof(pte_t));
 build_update_entries(p, tmp, ptr);
 build_tlb_write_entry(p, l, r, tlb_indexed);
 uasm_l_leave(l, *p);
 build_restore_work_registers(p);
 uasm_i_eret(p);




}
