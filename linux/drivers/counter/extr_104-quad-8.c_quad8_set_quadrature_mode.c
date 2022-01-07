
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quad8_iio {int* count_mode; int base; int* quadrature_scale; unsigned int* quadrature_mode; scalar_t__* synchronous_mode; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;


 unsigned int QUAD8_CTR_CMR ;
 struct quad8_iio* iio_priv (struct iio_dev*) ;
 int outb (unsigned int,int const) ;
 int quad8_set_synchronous_mode (struct iio_dev*,struct iio_chan_spec const*,int ) ;

__attribute__((used)) static int quad8_set_quadrature_mode(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, unsigned int quadrature_mode)
{
 struct quad8_iio *const priv = iio_priv(indio_dev);
 unsigned int mode_cfg = priv->count_mode[chan->channel] << 1;
 const int base_offset = priv->base + 2 * chan->channel + 1;

 if (quadrature_mode)
  mode_cfg |= (priv->quadrature_scale[chan->channel] + 1) << 3;
 else {

  priv->quadrature_scale[chan->channel] = 0;


  if (priv->synchronous_mode[chan->channel])
   quad8_set_synchronous_mode(indio_dev, chan, 0);
 }

 priv->quadrature_mode[chan->channel] = quadrature_mode;


 outb(QUAD8_CTR_CMR | mode_cfg, base_offset);

 return 0;
}
