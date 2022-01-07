
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 unsigned int AT91_PMC_LOCKU ;
 int AT91_PMC_SR ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static inline bool clk_utmi_ready(struct regmap *regmap)
{
 unsigned int status;

 regmap_read(regmap, AT91_PMC_SR, &status);

 return status & AT91_PMC_LOCKU;
}
