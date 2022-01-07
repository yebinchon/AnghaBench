
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct si5351_driver_data {int regmap; } ;


 int regmap_raw_write (int ,int ,int const*,int ) ;

__attribute__((used)) static inline int si5351_bulk_write(struct si5351_driver_data *drvdata,
        u8 reg, u8 count, const u8 *buf)
{
 return regmap_raw_write(drvdata->regmap, reg, buf, count);
}
