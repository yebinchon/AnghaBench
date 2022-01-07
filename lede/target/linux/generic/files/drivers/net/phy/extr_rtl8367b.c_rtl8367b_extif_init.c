
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8367_extif_config {int mode; int rxdelay; int txdelay; int ability; } ;
struct rtl8366_smi {int dummy; } ;
typedef enum rtl8367_extif_mode { ____Placeholder_rtl8367_extif_mode } rtl8367_extif_mode ;


 int RTL8367_EXTIF_MODE_DISABLED ;
 int rtl8367b_extif_set_force (struct rtl8366_smi*,int,int *) ;
 int rtl8367b_extif_set_mode (struct rtl8366_smi*,int,int) ;
 int rtl8367b_extif_set_rgmii_delay (struct rtl8366_smi*,int,int ,int ) ;

__attribute__((used)) static int rtl8367b_extif_init(struct rtl8366_smi *smi, int id,
          struct rtl8367_extif_config *cfg)
{
 enum rtl8367_extif_mode mode;
 int err;

 mode = (cfg) ? cfg->mode : RTL8367_EXTIF_MODE_DISABLED;

 err = rtl8367b_extif_set_mode(smi, id, mode);
 if (err)
  return err;

 if (mode != RTL8367_EXTIF_MODE_DISABLED) {
  err = rtl8367b_extif_set_force(smi, id, &cfg->ability);
  if (err)
   return err;

  err = rtl8367b_extif_set_rgmii_delay(smi, id, cfg->txdelay,
           cfg->rxdelay);
  if (err)
   return err;
 }

 return 0;
}
