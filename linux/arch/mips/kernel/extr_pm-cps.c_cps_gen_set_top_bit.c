
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uasm_reloc {int dummy; } ;
struct uasm_label {int dummy; } ;


 int t0 ;
 int t1 ;
 int uasm_build_label (struct uasm_label**,int *,int) ;
 int uasm_i_ll (int **,int ,int ,unsigned int) ;
 int uasm_i_lui (int **,int ,int ) ;
 int uasm_i_nop (int **) ;
 int uasm_i_or (int **,int ,int ,int ) ;
 int uasm_i_sc (int **,int ,int ,unsigned int) ;
 int uasm_il_beqz (int **,struct uasm_reloc**,int ,int) ;
 int uasm_rel_hi (int) ;

__attribute__((used)) static void cps_gen_set_top_bit(u32 **pp, struct uasm_label **pl,
    struct uasm_reloc **pr,
    unsigned r_addr, int lbl)
{
 uasm_i_lui(pp, t0, uasm_rel_hi(0x80000000));
 uasm_build_label(pl, *pp, lbl);
 uasm_i_ll(pp, t1, 0, r_addr);
 uasm_i_or(pp, t1, t1, t0);
 uasm_i_sc(pp, t1, 0, r_addr);
 uasm_il_beqz(pp, pr, t1, lbl);
 uasm_i_nop(pp);
}
