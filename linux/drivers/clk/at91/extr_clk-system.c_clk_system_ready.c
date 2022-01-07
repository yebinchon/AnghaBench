
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int AT91_PMC_SR ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static inline bool clk_system_ready(struct regmap *regmap, int id)
{
 unsigned int status;

 regmap_read(regmap, AT91_PMC_SR, &status);

 return status & (1 << id) ? 1 : 0;
}
