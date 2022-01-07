
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct reset_controller_dev {int dummy; } ;
struct aspeed_reset {int map; } ;


 int ASPEED_G6_RESET_CTRL ;
 int ASPEED_G6_RESET_CTRL2 ;
 int get_bit (unsigned long) ;
 int regmap_read (int ,int,int*) ;
 struct aspeed_reset* to_aspeed_reset (struct reset_controller_dev*) ;

__attribute__((used)) static int aspeed_g6_reset_status(struct reset_controller_dev *rcdev,
      unsigned long id)
{
 struct aspeed_reset *ar = to_aspeed_reset(rcdev);
 int ret;
 u32 val;
 u32 rst = get_bit(id);
 u32 reg = id >= 32 ? ASPEED_G6_RESET_CTRL2 : ASPEED_G6_RESET_CTRL;

 ret = regmap_read(ar->map, reg, &val);
 if (ret)
  return ret;

 return !!(val & rst);
}
