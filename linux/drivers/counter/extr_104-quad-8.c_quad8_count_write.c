
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quad8_iio {int base; unsigned long* preset; } ;
struct counter_device {struct quad8_iio* priv; } ;
struct counter_count_write_value {int dummy; } ;
struct counter_count {int id; } ;


 int COUNTER_COUNT_POSITION ;
 int EINVAL ;
 unsigned long QUAD8_CTR_RLD ;
 unsigned long QUAD8_RLD_PRESET_CNTR ;
 unsigned long QUAD8_RLD_RESET_BP ;
 unsigned long QUAD8_RLD_RESET_E ;
 unsigned long QUAD8_RLD_RESET_FLAGS ;
 int counter_count_write_value_get (unsigned long*,int ,struct counter_count_write_value*) ;
 int outb (unsigned long,int const) ;

__attribute__((used)) static int quad8_count_write(struct counter_device *counter,
 struct counter_count *count, struct counter_count_write_value *val)
{
 const struct quad8_iio *const priv = counter->priv;
 const int base_offset = priv->base + 2 * count->id;
 int err;
 unsigned long position;
 int i;

 err = counter_count_write_value_get(&position, COUNTER_COUNT_POSITION,
         val);
 if (err)
  return err;


 if (position > 0xFFFFFF)
  return -EINVAL;


 outb(QUAD8_CTR_RLD | QUAD8_RLD_RESET_BP, base_offset + 1);


 for (i = 0; i < 3; i++)
  outb(position >> (8 * i), base_offset);


 outb(QUAD8_CTR_RLD | QUAD8_RLD_PRESET_CNTR, base_offset + 1);


 outb(QUAD8_CTR_RLD | QUAD8_RLD_RESET_BP, base_offset + 1);


 position = priv->preset[count->id];
 for (i = 0; i < 3; i++)
  outb(position >> (8 * i), base_offset);


 outb(QUAD8_CTR_RLD | QUAD8_RLD_RESET_FLAGS, base_offset + 1);

 outb(QUAD8_CTR_RLD | QUAD8_RLD_RESET_E, base_offset + 1);

 return 0;
}
