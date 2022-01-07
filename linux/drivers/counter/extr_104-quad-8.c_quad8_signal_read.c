
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quad8_iio {scalar_t__ base; } ;
struct counter_signal_read_value {int dummy; } ;
struct counter_signal {int id; } ;
struct counter_device {struct quad8_iio* priv; } ;
typedef enum counter_signal_level { ____Placeholder_counter_signal_level } counter_signal_level ;


 unsigned int BIT (int) ;
 int COUNTER_SIGNAL_LEVEL ;
 int COUNTER_SIGNAL_LEVEL_HIGH ;
 int COUNTER_SIGNAL_LEVEL_LOW ;
 int EINVAL ;
 scalar_t__ QUAD8_REG_INDEX_INPUT_LEVELS ;
 int counter_signal_read_value_set (struct counter_signal_read_value*,int ,int*) ;
 unsigned int inb (scalar_t__) ;

__attribute__((used)) static int quad8_signal_read(struct counter_device *counter,
 struct counter_signal *signal, struct counter_signal_read_value *val)
{
 const struct quad8_iio *const priv = counter->priv;
 unsigned int state;
 enum counter_signal_level level;


 if (signal->id < 16)
  return -EINVAL;

 state = inb(priv->base + QUAD8_REG_INDEX_INPUT_LEVELS)
  & BIT(signal->id - 16);

 level = (state) ? COUNTER_SIGNAL_LEVEL_HIGH : COUNTER_SIGNAL_LEVEL_LOW;

 counter_signal_read_value_set(val, COUNTER_SIGNAL_LEVEL, &level);

 return 0;
}
