
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_si5341 {int regmap; } ;


 int ARRAY_SIZE (int ) ;
 int SI5341_DEVICE_REV ;
 int msleep (int) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int,int) ;
 int si5341_preamble ;
 int si5341_write_multiple (struct clk_si5341*,int ,int ) ;

__attribute__((used)) static int si5341_send_preamble(struct clk_si5341 *data)
{
 int res;
 u32 revision;


 res = regmap_read(data->regmap, SI5341_DEVICE_REV, &revision);
 if (res < 0)
  return res;


 res = regmap_write(data->regmap, 0xB24, revision < 2 ? 0xD8 : 0xC0);
 if (res < 0)
  return res;
 res = si5341_write_multiple(data,
  si5341_preamble, ARRAY_SIZE(si5341_preamble));
 if (res < 0)
  return res;


 msleep(300);

 return 0;
}
