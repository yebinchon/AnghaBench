
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gdsc {int cxc_count; int * cxcs; int regmap; } ;


 int RETAIN_MEM ;
 int RETAIN_PERIPH ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static inline void gdsc_force_mem_on(struct gdsc *sc)
{
 int i;
 u32 mask = RETAIN_MEM | RETAIN_PERIPH;

 for (i = 0; i < sc->cxc_count; i++)
  regmap_update_bits(sc->regmap, sc->cxcs[i], mask, mask);
}
