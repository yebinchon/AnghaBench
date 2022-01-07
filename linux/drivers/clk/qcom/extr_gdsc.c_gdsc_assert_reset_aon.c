
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdsc {int clamp_io_ctrl; int regmap; } ;


 int GMEM_RESET_MASK ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static inline void gdsc_assert_reset_aon(struct gdsc *sc)
{
 regmap_update_bits(sc->regmap, sc->clamp_io_ctrl,
      GMEM_RESET_MASK, 1);
 udelay(1);
 regmap_update_bits(sc->regmap, sc->clamp_io_ctrl,
      GMEM_RESET_MASK, 0);
}
