
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int trunc_l_d; int trunc_l_s; int trunc_w_d; int trunc_w_s; int sub_d; int sub_s; int sqrt_d; int sqrt_s; int selnez_d; int selnez_s; int seleqz_d; int seleqz_s; int sel_d; int sel_s; int rsqrt_d; int rsqrt_s; int round_l_d; int round_l_s; int round_w_d; int round_w_s; int rint_d; int rint_s; int recip_d; int recip_s; int neg_d; int neg_s; int mul_d; int mul_s; int msubf_d; int msubf_s; int mov_d; int mov_s; int mina_d; int mina_s; int min_d; int min_s; int maxa_d; int maxa_s; int max_d; int max_s; int maddf_d; int maddf_s; int floor_l_d; int floor_l_s; int floor_w_d; int floor_w_s; int div_d; int div_s; int cvt_w_d; int cvt_w_s; int cvt_s_w; int cvt_s_l; int cvt_s_d; int cvt_l_d; int cvt_l_s; int cvt_d_w; int cvt_d_s; int cvt_d_l; int cmp_sune_d; int cmp_sune_s; int cmp_sun_d; int cmp_sun_s; int cmp_sult_d; int cmp_sult_s; int cmp_sule_d; int cmp_sule_s; int cmp_sueq_d; int cmp_sueq_s; int cmp_sor_d; int cmp_sor_s; int cmp_sne_d; int cmp_sne_s; int cmp_slt_d; int cmp_slt_s; int cmp_sle_d; int cmp_sle_s; int cmp_seq_d; int cmp_seq_s; int cmp_saf_d; int cmp_saf_s; int cmp_une_d; int cmp_une_s; int cmp_un_d; int cmp_un_s; int cmp_ult_d; int cmp_ult_s; int cmp_ule_d; int cmp_ule_s; int cmp_ueq_d; int cmp_ueq_s; int cmp_or_d; int cmp_or_s; int cmp_ne_d; int cmp_ne_s; int cmp_lt_d; int cmp_lt_s; int cmp_le_d; int cmp_le_s; int cmp_eq_d; int cmp_eq_s; int cmp_af_d; int cmp_af_s; int class_d; int class_s; int ceil_l_d; int ceil_l_s; int ceil_w_d; int ceil_w_s; int bc1nez; int bc1eqz; int add_d; int add_s; int abs_d; int abs_s; int ds_emul; int ieee754_invalidop; int ieee754_zerodiv; int ieee754_overflow; int ieee754_underflow; int ieee754_inexact; int errors; int cp1xops; int cp1ops; int branches; int stores; int loads; int emulated; } ;


 int __this_cpu_write (int ,int ) ;
 TYPE_1__ fpuemustats ;

__attribute__((used)) static int fpuemustats_clear_show(struct seq_file *s, void *unused)
{
 __this_cpu_write((fpuemustats).emulated, 0);
 __this_cpu_write((fpuemustats).loads, 0);
 __this_cpu_write((fpuemustats).stores, 0);
 __this_cpu_write((fpuemustats).branches, 0);
 __this_cpu_write((fpuemustats).cp1ops, 0);
 __this_cpu_write((fpuemustats).cp1xops, 0);
 __this_cpu_write((fpuemustats).errors, 0);
 __this_cpu_write((fpuemustats).ieee754_inexact, 0);
 __this_cpu_write((fpuemustats).ieee754_underflow, 0);
 __this_cpu_write((fpuemustats).ieee754_overflow, 0);
 __this_cpu_write((fpuemustats).ieee754_zerodiv, 0);
 __this_cpu_write((fpuemustats).ieee754_invalidop, 0);
 __this_cpu_write((fpuemustats).ds_emul, 0);

 __this_cpu_write((fpuemustats).abs_s, 0);
 __this_cpu_write((fpuemustats).abs_d, 0);
 __this_cpu_write((fpuemustats).add_s, 0);
 __this_cpu_write((fpuemustats).add_d, 0);
 __this_cpu_write((fpuemustats).bc1eqz, 0);
 __this_cpu_write((fpuemustats).bc1nez, 0);
 __this_cpu_write((fpuemustats).ceil_w_s, 0);
 __this_cpu_write((fpuemustats).ceil_w_d, 0);
 __this_cpu_write((fpuemustats).ceil_l_s, 0);
 __this_cpu_write((fpuemustats).ceil_l_d, 0);
 __this_cpu_write((fpuemustats).class_s, 0);
 __this_cpu_write((fpuemustats).class_d, 0);
 __this_cpu_write((fpuemustats).cmp_af_s, 0);
 __this_cpu_write((fpuemustats).cmp_af_d, 0);
 __this_cpu_write((fpuemustats).cmp_eq_s, 0);
 __this_cpu_write((fpuemustats).cmp_eq_d, 0);
 __this_cpu_write((fpuemustats).cmp_le_s, 0);
 __this_cpu_write((fpuemustats).cmp_le_d, 0);
 __this_cpu_write((fpuemustats).cmp_lt_s, 0);
 __this_cpu_write((fpuemustats).cmp_lt_d, 0);
 __this_cpu_write((fpuemustats).cmp_ne_s, 0);
 __this_cpu_write((fpuemustats).cmp_ne_d, 0);
 __this_cpu_write((fpuemustats).cmp_or_s, 0);
 __this_cpu_write((fpuemustats).cmp_or_d, 0);
 __this_cpu_write((fpuemustats).cmp_ueq_s, 0);
 __this_cpu_write((fpuemustats).cmp_ueq_d, 0);
 __this_cpu_write((fpuemustats).cmp_ule_s, 0);
 __this_cpu_write((fpuemustats).cmp_ule_d, 0);
 __this_cpu_write((fpuemustats).cmp_ult_s, 0);
 __this_cpu_write((fpuemustats).cmp_ult_d, 0);
 __this_cpu_write((fpuemustats).cmp_un_s, 0);
 __this_cpu_write((fpuemustats).cmp_un_d, 0);
 __this_cpu_write((fpuemustats).cmp_une_s, 0);
 __this_cpu_write((fpuemustats).cmp_une_d, 0);
 __this_cpu_write((fpuemustats).cmp_saf_s, 0);
 __this_cpu_write((fpuemustats).cmp_saf_d, 0);
 __this_cpu_write((fpuemustats).cmp_seq_s, 0);
 __this_cpu_write((fpuemustats).cmp_seq_d, 0);
 __this_cpu_write((fpuemustats).cmp_sle_s, 0);
 __this_cpu_write((fpuemustats).cmp_sle_d, 0);
 __this_cpu_write((fpuemustats).cmp_slt_s, 0);
 __this_cpu_write((fpuemustats).cmp_slt_d, 0);
 __this_cpu_write((fpuemustats).cmp_sne_s, 0);
 __this_cpu_write((fpuemustats).cmp_sne_d, 0);
 __this_cpu_write((fpuemustats).cmp_sor_s, 0);
 __this_cpu_write((fpuemustats).cmp_sor_d, 0);
 __this_cpu_write((fpuemustats).cmp_sueq_s, 0);
 __this_cpu_write((fpuemustats).cmp_sueq_d, 0);
 __this_cpu_write((fpuemustats).cmp_sule_s, 0);
 __this_cpu_write((fpuemustats).cmp_sule_d, 0);
 __this_cpu_write((fpuemustats).cmp_sult_s, 0);
 __this_cpu_write((fpuemustats).cmp_sult_d, 0);
 __this_cpu_write((fpuemustats).cmp_sun_s, 0);
 __this_cpu_write((fpuemustats).cmp_sun_d, 0);
 __this_cpu_write((fpuemustats).cmp_sune_s, 0);
 __this_cpu_write((fpuemustats).cmp_sune_d, 0);
 __this_cpu_write((fpuemustats).cvt_d_l, 0);
 __this_cpu_write((fpuemustats).cvt_d_s, 0);
 __this_cpu_write((fpuemustats).cvt_d_w, 0);
 __this_cpu_write((fpuemustats).cvt_l_s, 0);
 __this_cpu_write((fpuemustats).cvt_l_d, 0);
 __this_cpu_write((fpuemustats).cvt_s_d, 0);
 __this_cpu_write((fpuemustats).cvt_s_l, 0);
 __this_cpu_write((fpuemustats).cvt_s_w, 0);
 __this_cpu_write((fpuemustats).cvt_w_s, 0);
 __this_cpu_write((fpuemustats).cvt_w_d, 0);
 __this_cpu_write((fpuemustats).div_s, 0);
 __this_cpu_write((fpuemustats).div_d, 0);
 __this_cpu_write((fpuemustats).floor_w_s, 0);
 __this_cpu_write((fpuemustats).floor_w_d, 0);
 __this_cpu_write((fpuemustats).floor_l_s, 0);
 __this_cpu_write((fpuemustats).floor_l_d, 0);
 __this_cpu_write((fpuemustats).maddf_s, 0);
 __this_cpu_write((fpuemustats).maddf_d, 0);
 __this_cpu_write((fpuemustats).max_s, 0);
 __this_cpu_write((fpuemustats).max_d, 0);
 __this_cpu_write((fpuemustats).maxa_s, 0);
 __this_cpu_write((fpuemustats).maxa_d, 0);
 __this_cpu_write((fpuemustats).min_s, 0);
 __this_cpu_write((fpuemustats).min_d, 0);
 __this_cpu_write((fpuemustats).mina_s, 0);
 __this_cpu_write((fpuemustats).mina_d, 0);
 __this_cpu_write((fpuemustats).mov_s, 0);
 __this_cpu_write((fpuemustats).mov_d, 0);
 __this_cpu_write((fpuemustats).msubf_s, 0);
 __this_cpu_write((fpuemustats).msubf_d, 0);
 __this_cpu_write((fpuemustats).mul_s, 0);
 __this_cpu_write((fpuemustats).mul_d, 0);
 __this_cpu_write((fpuemustats).neg_s, 0);
 __this_cpu_write((fpuemustats).neg_d, 0);
 __this_cpu_write((fpuemustats).recip_s, 0);
 __this_cpu_write((fpuemustats).recip_d, 0);
 __this_cpu_write((fpuemustats).rint_s, 0);
 __this_cpu_write((fpuemustats).rint_d, 0);
 __this_cpu_write((fpuemustats).round_w_s, 0);
 __this_cpu_write((fpuemustats).round_w_d, 0);
 __this_cpu_write((fpuemustats).round_l_s, 0);
 __this_cpu_write((fpuemustats).round_l_d, 0);
 __this_cpu_write((fpuemustats).rsqrt_s, 0);
 __this_cpu_write((fpuemustats).rsqrt_d, 0);
 __this_cpu_write((fpuemustats).sel_s, 0);
 __this_cpu_write((fpuemustats).sel_d, 0);
 __this_cpu_write((fpuemustats).seleqz_s, 0);
 __this_cpu_write((fpuemustats).seleqz_d, 0);
 __this_cpu_write((fpuemustats).selnez_s, 0);
 __this_cpu_write((fpuemustats).selnez_d, 0);
 __this_cpu_write((fpuemustats).sqrt_s, 0);
 __this_cpu_write((fpuemustats).sqrt_d, 0);
 __this_cpu_write((fpuemustats).sub_s, 0);
 __this_cpu_write((fpuemustats).sub_d, 0);
 __this_cpu_write((fpuemustats).trunc_w_s, 0);
 __this_cpu_write((fpuemustats).trunc_w_d, 0);
 __this_cpu_write((fpuemustats).trunc_l_s, 0);
 __this_cpu_write((fpuemustats).trunc_l_d, 0);

 return 0;
}
