
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct clk_si5341_output {TYPE_1__* data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ num_synth; } ;


 int EINVAL ;
 int si5341_output_reparent (struct clk_si5341_output*,scalar_t__) ;
 struct clk_si5341_output* to_clk_si5341_output (struct clk_hw*) ;

__attribute__((used)) static int si5341_output_set_parent(struct clk_hw *hw, u8 index)
{
 struct clk_si5341_output *output = to_clk_si5341_output(hw);

 if (index >= output->data->num_synth)
  return -EINVAL;

 return si5341_output_reparent(output, index);
}
