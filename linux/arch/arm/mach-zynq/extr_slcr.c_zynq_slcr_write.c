
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int regmap_write (int ,int ,int ) ;
 int zynq_slcr_regmap ;

__attribute__((used)) static int zynq_slcr_write(u32 val, u32 offset)
{
 return regmap_write(zynq_slcr_regmap, offset, val);
}
