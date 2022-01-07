
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quad8_iio {int base; int* preset_enable; unsigned int* ab_enable; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
typedef int ssize_t ;


 unsigned int QUAD8_CTR_IOR ;
 struct quad8_iio* iio_priv (struct iio_dev*) ;
 int kstrtobool (char const*,int*) ;
 int outb (unsigned int,int const) ;

__attribute__((used)) static ssize_t quad8_write_set_to_preset_on_index(struct iio_dev *indio_dev,
 uintptr_t private, const struct iio_chan_spec *chan, const char *buf,
 size_t len)
{
 struct quad8_iio *const priv = iio_priv(indio_dev);
 const int base_offset = priv->base + 2 * chan->channel + 1;
 bool preset_enable;
 int ret;
 unsigned int ior_cfg;

 ret = kstrtobool(buf, &preset_enable);
 if (ret)
  return ret;


 preset_enable = !preset_enable;

 priv->preset_enable[chan->channel] = preset_enable;

 ior_cfg = priv->ab_enable[chan->channel] |
  (unsigned int)preset_enable << 1;


 outb(QUAD8_CTR_IOR | ior_cfg, base_offset);

 return len;
}
