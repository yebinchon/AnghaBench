
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quad8_iio {unsigned int* synchronous_mode; int base; unsigned int* index_polarity; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;


 unsigned int const QUAD8_CTR_IDR ;
 struct quad8_iio* iio_priv (struct iio_dev*) ;
 int outb (unsigned int const,int const) ;

__attribute__((used)) static int quad8_set_index_polarity(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, unsigned int index_polarity)
{
 struct quad8_iio *const priv = iio_priv(indio_dev);
 const unsigned int idr_cfg = priv->synchronous_mode[chan->channel] |
  index_polarity << 1;
 const int base_offset = priv->base + 2 * chan->channel + 1;

 priv->index_polarity[chan->channel] = index_polarity;


 outb(QUAD8_CTR_IDR | idr_cfg, base_offset);

 return 0;
}
