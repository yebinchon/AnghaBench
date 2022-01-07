
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quad8_iio {int base; unsigned int* preset; } ;
struct counter_device {struct quad8_iio* priv; } ;
struct counter_count {int id; } ;
typedef int ssize_t ;


 int EINVAL ;
 unsigned int QUAD8_CTR_RLD ;
 unsigned int QUAD8_RLD_RESET_BP ;
 int kstrtouint (char const*,int ,unsigned int*) ;
 int outb (unsigned int,int const) ;

__attribute__((used)) static ssize_t quad8_count_preset_write(struct counter_device *counter,
 struct counter_count *count, void *private, const char *buf, size_t len)
{
 struct quad8_iio *const priv = counter->priv;
 const int base_offset = priv->base + 2 * count->id;
 unsigned int preset;
 int ret;
 int i;

 ret = kstrtouint(buf, 0, &preset);
 if (ret)
  return ret;


 if (preset > 0xFFFFFF)
  return -EINVAL;

 priv->preset[count->id] = preset;


 outb(QUAD8_CTR_RLD | QUAD8_RLD_RESET_BP, base_offset + 1);


 for (i = 0; i < 3; i++)
  outb(preset >> (8 * i), base_offset);

 return len;
}
