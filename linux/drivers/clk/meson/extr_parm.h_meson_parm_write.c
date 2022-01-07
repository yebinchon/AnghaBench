
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct parm {unsigned int shift; int width; int reg_off; } ;


 int SETPMASK (int ,unsigned int) ;
 int regmap_update_bits (struct regmap*,int ,int ,unsigned int) ;

__attribute__((used)) static inline void meson_parm_write(struct regmap *map, struct parm *p,
        unsigned int val)
{
 regmap_update_bits(map, p->reg_off, SETPMASK(p->width, p->shift),
      val << p->shift);
}
