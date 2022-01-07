
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quad8_iio {int base; } ;
struct counter_device {struct quad8_iio* priv; } ;
struct counter_count_read_value {int dummy; } ;
struct counter_count {int id; } ;


 int COUNTER_COUNT_POSITION ;
 int QUAD8_CTR_RLD ;
 unsigned int QUAD8_FLAG_BT ;
 unsigned int QUAD8_FLAG_CT ;
 int QUAD8_RLD_CNTR_OUT ;
 int QUAD8_RLD_RESET_BP ;
 int counter_count_read_value_set (struct counter_count_read_value*,int ,unsigned long*) ;
 unsigned int inb (int const) ;
 int outb (int,int const) ;

__attribute__((used)) static int quad8_count_read(struct counter_device *counter,
 struct counter_count *count, struct counter_count_read_value *val)
{
 const struct quad8_iio *const priv = counter->priv;
 const int base_offset = priv->base + 2 * count->id;
 unsigned int flags;
 unsigned int borrow;
 unsigned int carry;
 unsigned long position;
 int i;

 flags = inb(base_offset + 1);
 borrow = flags & QUAD8_FLAG_BT;
 carry = !!(flags & QUAD8_FLAG_CT);


 position = (unsigned long)(borrow ^ carry) << 24;


 outb(QUAD8_CTR_RLD | QUAD8_RLD_RESET_BP | QUAD8_RLD_CNTR_OUT,
      base_offset + 1);

 for (i = 0; i < 3; i++)
  position |= (unsigned long)inb(base_offset) << (8 * i);

 counter_count_read_value_set(val, COUNTER_COUNT_POSITION, &position);

 return 0;
}
