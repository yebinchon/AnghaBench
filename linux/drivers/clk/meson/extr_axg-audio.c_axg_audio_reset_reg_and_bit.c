
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axg_audio_reset_data {scalar_t__ offset; int map; } ;


 unsigned int BITS_PER_BYTE ;
 unsigned int regmap_get_reg_stride (int ) ;

__attribute__((used)) static void axg_audio_reset_reg_and_bit(struct axg_audio_reset_data *rst,
     unsigned long id,
     unsigned int *reg,
     unsigned int *bit)
{
 unsigned int stride = regmap_get_reg_stride(rst->map);

 *reg = (id / (stride * BITS_PER_BYTE)) * stride;
 *reg += rst->offset;
 *bit = id % (stride * BITS_PER_BYTE);
}
