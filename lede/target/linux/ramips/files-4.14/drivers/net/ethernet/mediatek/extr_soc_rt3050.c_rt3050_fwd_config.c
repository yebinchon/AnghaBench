
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fe_priv {int dummy; } ;


 int FE_PSE_FQFC_CFG_INIT ;
 int FE_PSE_FQ_CFG ;
 scalar_t__ RT305X_SOC_RT3052 ;
 scalar_t__ RT305X_SOC_RT3352 ;
 int fe_csum_config (struct fe_priv*) ;
 int fe_fwd_config (struct fe_priv*) ;
 int fe_set_clock_cycle (struct fe_priv*) ;
 int fe_w32 (int ,int ) ;
 scalar_t__ ralink_soc ;

__attribute__((used)) static int rt3050_fwd_config(struct fe_priv *priv)
{
 int ret;

 if (ralink_soc != RT305X_SOC_RT3052) {
  ret = fe_set_clock_cycle(priv);
  if (ret)
   return ret;
 }

 fe_fwd_config(priv);
 if (ralink_soc != RT305X_SOC_RT3352)
  fe_w32(FE_PSE_FQFC_CFG_INIT, FE_PSE_FQ_CFG);
 fe_csum_config(priv);

 return 0;
}
