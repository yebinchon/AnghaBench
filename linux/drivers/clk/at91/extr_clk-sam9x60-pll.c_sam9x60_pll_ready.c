
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 unsigned int BIT (int) ;
 int PMC_PLL_ISR0 ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static inline bool sam9x60_pll_ready(struct regmap *regmap, int id)
{
 unsigned int status;

 regmap_read(regmap, PMC_PLL_ISR0, &status);

 return !!(status & BIT(id));
}
