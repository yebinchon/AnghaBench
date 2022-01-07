
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quad8_iio {int base; int* preset_enable; unsigned int* ab_enable; } ;
struct counter_device {struct quad8_iio* priv; } ;
struct counter_count {int id; } ;
typedef int ssize_t ;


 unsigned int QUAD8_CTR_IOR ;
 int kstrtobool (char const*,int*) ;
 int outb (unsigned int,int const) ;

__attribute__((used)) static ssize_t quad8_count_preset_enable_write(struct counter_device *counter,
 struct counter_count *count, void *private, const char *buf, size_t len)
{
 struct quad8_iio *const priv = counter->priv;
 const int base_offset = priv->base + 2 * count->id + 1;
 bool preset_enable;
 int ret;
 unsigned int ior_cfg;

 ret = kstrtobool(buf, &preset_enable);
 if (ret)
  return ret;


 preset_enable = !preset_enable;

 priv->preset_enable[count->id] = preset_enable;

 ior_cfg = priv->ab_enable[count->id] | (unsigned int)preset_enable << 1;


 outb(QUAD8_CTR_IOR | ior_cfg, base_offset);

 return len;
}
