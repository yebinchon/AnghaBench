
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quad8_iio {int base; unsigned int* count_mode; int* quadrature_scale; scalar_t__* quadrature_mode; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;


 unsigned int QUAD8_CTR_CMR ;
 struct quad8_iio* iio_priv (struct iio_dev*) ;
 int outb (unsigned int,int const) ;

__attribute__((used)) static int quad8_set_count_mode(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, unsigned int cnt_mode)
{
 struct quad8_iio *const priv = iio_priv(indio_dev);
 unsigned int mode_cfg = cnt_mode << 1;
 const int base_offset = priv->base + 2 * chan->channel + 1;

 priv->count_mode[chan->channel] = cnt_mode;


 if (priv->quadrature_mode[chan->channel])
  mode_cfg |= (priv->quadrature_scale[chan->channel] + 1) << 3;


 outb(QUAD8_CTR_CMR | mode_cfg, base_offset);

 return 0;
}
