
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct reset_controller_dev {int dummy; } ;
struct aspeed_reset {int map; } ;


 scalar_t__ ASPEED_RESET2_OFFSET ;
 scalar_t__ ASPEED_RESET_CTRL ;
 scalar_t__ ASPEED_RESET_CTRL2 ;
 int BIT (scalar_t__) ;
 scalar_t__* aspeed_resets ;
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;
 struct aspeed_reset* to_aspeed_reset (struct reset_controller_dev*) ;

__attribute__((used)) static int aspeed_reset_deassert(struct reset_controller_dev *rcdev,
     unsigned long id)
{
 struct aspeed_reset *ar = to_aspeed_reset(rcdev);
 u32 reg = ASPEED_RESET_CTRL;
 u32 bit = aspeed_resets[id];

 if (bit >= ASPEED_RESET2_OFFSET) {
  bit -= ASPEED_RESET2_OFFSET;
  reg = ASPEED_RESET_CTRL2;
 }

 return regmap_update_bits(ar->map, reg, BIT(bit), 0);
}
