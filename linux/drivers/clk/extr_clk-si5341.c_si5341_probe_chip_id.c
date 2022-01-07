
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct clk_si5341 {TYPE_1__* i2c_client; int reg_rdiv_offset; int reg_output_offset; int num_synth; int num_outputs; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int SI5340_MAX_NUM_OUTPUTS ;
 int SI5340_NUM_SYNTH ;
 int SI5341_MAX_NUM_OUTPUTS ;
 int SI5341_NUM_SYNTH ;
 int SI5341_PN_BASE ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int,int ,int ) ;
 int get_unaligned_le16 (int *) ;
 int regmap_bulk_read (int ,int ,int *,int ) ;
 int si5340_reg_output_offset ;
 int si5340_reg_rdiv_offset ;
 int si5341_reg_output_offset ;
 int si5341_reg_rdiv_offset ;

__attribute__((used)) static int si5341_probe_chip_id(struct clk_si5341 *data)
{
 int err;
 u8 reg[4];
 u16 model;

 err = regmap_bulk_read(data->regmap, SI5341_PN_BASE, reg,
    ARRAY_SIZE(reg));
 if (err < 0) {
  dev_err(&data->i2c_client->dev, "Failed to read chip ID\n");
  return err;
 }

 model = get_unaligned_le16(reg);

 dev_info(&data->i2c_client->dev, "Chip: %x Grade: %u Rev: %u\n",
   model, reg[2], reg[3]);

 switch (model) {
 case 0x5340:
  data->num_outputs = SI5340_MAX_NUM_OUTPUTS;
  data->num_synth = SI5340_NUM_SYNTH;
  data->reg_output_offset = si5340_reg_output_offset;
  data->reg_rdiv_offset = si5340_reg_rdiv_offset;
  break;
 case 0x5341:
  data->num_outputs = SI5341_MAX_NUM_OUTPUTS;
  data->num_synth = SI5341_NUM_SYNTH;
  data->reg_output_offset = si5341_reg_output_offset;
  data->reg_rdiv_offset = si5341_reg_rdiv_offset;
  break;
 default:
  dev_err(&data->i2c_client->dev, "Model '%x' not supported\n",
   model);
  return -EINVAL;
 }

 return 0;
}
