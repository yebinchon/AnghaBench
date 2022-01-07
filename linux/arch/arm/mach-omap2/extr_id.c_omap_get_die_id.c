
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_die_id {void* id_3; void* id_2; void* id_1; void* id_0; } ;


 int OMAP_TAP_DIE_ID_0 ;
 int OMAP_TAP_DIE_ID_1 ;
 int OMAP_TAP_DIE_ID_2 ;
 int OMAP_TAP_DIE_ID_3 ;
 int OMAP_TAP_DIE_ID_44XX_0 ;
 int OMAP_TAP_DIE_ID_44XX_1 ;
 int OMAP_TAP_DIE_ID_44XX_2 ;
 int OMAP_TAP_DIE_ID_44XX_3 ;
 void* read_tap_reg (int ) ;
 scalar_t__ soc_is_dra7xx () ;
 scalar_t__ soc_is_omap44xx () ;
 scalar_t__ soc_is_omap54xx () ;

void omap_get_die_id(struct omap_die_id *odi)
{
 if (soc_is_omap44xx() || soc_is_omap54xx() || soc_is_dra7xx()) {
  odi->id_0 = read_tap_reg(OMAP_TAP_DIE_ID_44XX_0);
  odi->id_1 = read_tap_reg(OMAP_TAP_DIE_ID_44XX_1);
  odi->id_2 = read_tap_reg(OMAP_TAP_DIE_ID_44XX_2);
  odi->id_3 = read_tap_reg(OMAP_TAP_DIE_ID_44XX_3);

  return;
 }
 odi->id_0 = read_tap_reg(OMAP_TAP_DIE_ID_0);
 odi->id_1 = read_tap_reg(OMAP_TAP_DIE_ID_1);
 odi->id_2 = read_tap_reg(OMAP_TAP_DIE_ID_2);
 odi->id_3 = read_tap_reg(OMAP_TAP_DIE_ID_3);
}
