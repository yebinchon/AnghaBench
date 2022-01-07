
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct reset_controller_dev {int dummy; } ;
struct qcom_reset_map {int reg; int bit; } ;
struct qcom_reset_controller {int regmap; struct qcom_reset_map* reset_map; } ;


 int BIT (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct qcom_reset_controller* to_qcom_reset_controller (struct reset_controller_dev*) ;

__attribute__((used)) static int
qcom_reset_deassert(struct reset_controller_dev *rcdev, unsigned long id)
{
 struct qcom_reset_controller *rst;
 const struct qcom_reset_map *map;
 u32 mask;

 rst = to_qcom_reset_controller(rcdev);
 map = &rst->reset_map[id];
 mask = BIT(map->bit);

 return regmap_update_bits(rst->regmap, map->reg, mask, 0);
}
