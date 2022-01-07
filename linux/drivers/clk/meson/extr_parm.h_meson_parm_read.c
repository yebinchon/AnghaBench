
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct parm {int shift; int width; int reg_off; } ;


 unsigned int PARM_GET (int ,int ,unsigned int) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static inline unsigned int meson_parm_read(struct regmap *map, struct parm *p)
{
 unsigned int val;

 regmap_read(map, p->reg_off, &val);
 return PARM_GET(p->width, p->shift, val);
}
