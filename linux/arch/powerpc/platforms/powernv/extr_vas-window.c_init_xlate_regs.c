
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vas_window {int dummy; } ;


 int AMR ;
 int LPCR_ISL ;
 int LPCR_TC ;
 int SEIDR ;
 int SET_FIELD (int ,int,int) ;
 int SPRN_AMR ;
 int SPRN_LPCR ;
 int VAS_AMR ;
 int VAS_SEIDR ;
 int VAS_XLATE_LPCR_ISL ;
 int VAS_XLATE_LPCR_PAGE_SIZE ;
 int VAS_XLATE_LPCR_SC ;
 int VAS_XLATE_LPCR_TC ;
 int VAS_XLATE_MODE ;
 int VAS_XLATE_MSR_DR ;
 int VAS_XLATE_MSR_HV ;
 int VAS_XLATE_MSR_PR ;
 int VAS_XLATE_MSR_SF ;
 int VREG (int ) ;
 int XLATE_CTL ;
 int XLATE_LPCR ;
 int XLATE_MSR ;
 int mfspr (int ) ;
 scalar_t__ radix_enabled () ;
 int write_hvwc_reg (struct vas_window*,int ,int) ;

__attribute__((used)) static void init_xlate_regs(struct vas_window *window, bool user_win)
{
 u64 lpcr, val;





 val = 0ULL;
 val = SET_FIELD(VAS_XLATE_MSR_HV, val, 1);
 val = SET_FIELD(VAS_XLATE_MSR_SF, val, 1);
 if (user_win) {
  val = SET_FIELD(VAS_XLATE_MSR_DR, val, 1);
  val = SET_FIELD(VAS_XLATE_MSR_PR, val, 1);
 }
 write_hvwc_reg(window, VREG(XLATE_MSR), val);

 lpcr = mfspr(SPRN_LPCR);
 val = 0ULL;







 val = SET_FIELD(VAS_XLATE_LPCR_PAGE_SIZE, val, 5);
 val = SET_FIELD(VAS_XLATE_LPCR_ISL, val, lpcr & LPCR_ISL);
 val = SET_FIELD(VAS_XLATE_LPCR_TC, val, lpcr & LPCR_TC);
 val = SET_FIELD(VAS_XLATE_LPCR_SC, val, 0);
 write_hvwc_reg(window, VREG(XLATE_LPCR), val);
 val = 0ULL;
 val = SET_FIELD(VAS_XLATE_MODE, val, radix_enabled() ? 3 : 2);
 write_hvwc_reg(window, VREG(XLATE_CTL), val);




 val = 0ULL;
 val = SET_FIELD(VAS_AMR, val, mfspr(SPRN_AMR));
 write_hvwc_reg(window, VREG(AMR), val);

 val = 0ULL;
 val = SET_FIELD(VAS_SEIDR, val, 0);
 write_hvwc_reg(window, VREG(SEIDR), val);
}
