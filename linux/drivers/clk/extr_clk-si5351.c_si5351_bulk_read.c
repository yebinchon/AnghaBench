
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct si5351_driver_data {int regmap; } ;


 int regmap_bulk_read (int ,int ,int *,int ) ;

__attribute__((used)) static inline int si5351_bulk_read(struct si5351_driver_data *drvdata,
       u8 reg, u8 count, u8 *buf)
{
 return regmap_bulk_read(drvdata->regmap, reg, buf, count);
}
