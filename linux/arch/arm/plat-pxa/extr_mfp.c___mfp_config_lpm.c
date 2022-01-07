
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfp_pin {unsigned long mfpr_run; unsigned long mfpr_lpm; int mfpr_off; } ;


 unsigned long MFPR_EDGE_BOTH ;
 unsigned long MFPR_EDGE_CLEAR ;
 scalar_t__ mfp_configured (struct mfp_pin*) ;
 int mfpr_writel (int ,unsigned long) ;

__attribute__((used)) static inline void __mfp_config_lpm(struct mfp_pin *p)
{
 if (mfp_configured(p)) {
  unsigned long mfpr_clr = (p->mfpr_run & ~MFPR_EDGE_BOTH) | MFPR_EDGE_CLEAR;
  if (mfpr_clr != p->mfpr_run)
   mfpr_writel(p->mfpr_off, mfpr_clr);
  if (p->mfpr_lpm != mfpr_clr)
   mfpr_writel(p->mfpr_off, p->mfpr_lpm);
 }
}
