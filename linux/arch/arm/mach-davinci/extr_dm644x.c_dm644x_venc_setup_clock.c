
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum vpbe_enc_timings_type { ____Placeholder_vpbe_enc_timings_type } vpbe_enc_timings_type ;


 int DAVINCI_SYSMOD_VIRT (int ) ;
 int DM644X_VPSS_DACCLKEN ;
 int DM644X_VPSS_MUXSEL_VPBECLK_MODE ;
 int DM644X_VPSS_VENCLKEN ;
 int EINVAL ;
 int SYSMOD_VPSS_CLKCTL ;


 int writel (int ,int ) ;

__attribute__((used)) static int dm644x_venc_setup_clock(enum vpbe_enc_timings_type type,
       unsigned int pclock)
{
 int ret = 0;
 u32 v = DM644X_VPSS_VENCLKEN;

 switch (type) {
 case 128:
  v |= DM644X_VPSS_DACCLKEN;
  writel(v, DAVINCI_SYSMOD_VIRT(SYSMOD_VPSS_CLKCTL));
  break;
 case 129:
  if (pclock <= 27000000) {
   v |= DM644X_VPSS_DACCLKEN;
   writel(v, DAVINCI_SYSMOD_VIRT(SYSMOD_VPSS_CLKCTL));
  } else {




   v |= DM644X_VPSS_MUXSEL_VPBECLK_MODE;
   writel(v, DAVINCI_SYSMOD_VIRT(SYSMOD_VPSS_CLKCTL));
  }
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
