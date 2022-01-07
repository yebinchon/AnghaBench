
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;



__attribute__((used)) static bool vc5_regmap_is_writeable(struct device *dev, unsigned int reg)
{

 if (reg <= 0xf)
  return 0;


 if (reg == 0x14 || reg == 0x1c || reg == 0x1d)
  return 0;

 return 1;
}
