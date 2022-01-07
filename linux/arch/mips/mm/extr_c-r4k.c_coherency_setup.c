
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONF_CM_CMASK ;
 int CONF_CU ;
 int _CACHE_SHIFT ;
 int _page_cachable_default ;
 int au1x00_fixup_config_od () ;
 int cca ;
 int change_c0_config (int,int) ;
 int clear_c0_config (int ) ;
 int current_cpu_type () ;
 int nxp_pr4450_fixup_config () ;
 int pr_debug (char*,int) ;
 int read_c0_config () ;

__attribute__((used)) static void coherency_setup(void)
{
 if (cca < 0 || cca > 7)
  cca = read_c0_config() & CONF_CM_CMASK;
 _page_cachable_default = cca << _CACHE_SHIFT;

 pr_debug("Using cache attribute %d\n", cca);
 change_c0_config(CONF_CM_CMASK, cca);
 switch (current_cpu_type()) {
 case 133:
 case 132:
 case 134:
 case 130:
 case 129:
 case 131:
  clear_c0_config(CONF_CU);
  break;





 case 135:
  au1x00_fixup_config_od();
  break;

 case 128:
  nxp_pr4450_fixup_config();
  break;
 }
}
