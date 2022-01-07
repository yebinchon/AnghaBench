
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CM_FCLKEN1 ;
 int CORE_MOD ;
 int OMAP24XX_CM_FCLKEN2 ;
 int omap2_cm_read_mod_reg (int ,int ) ;

int omap2xxx_cm_fclks_active(void)
{
 u32 f1, f2;

 f1 = omap2_cm_read_mod_reg(CORE_MOD, CM_FCLKEN1);
 f2 = omap2_cm_read_mod_reg(CORE_MOD, OMAP24XX_CM_FCLKEN2);

 return (f1 | f2) ? 1 : 0;
}
