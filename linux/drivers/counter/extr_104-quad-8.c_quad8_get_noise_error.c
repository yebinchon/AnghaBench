
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quad8_iio {int base; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;


 int QUAD8_FLAG_E ;
 struct quad8_iio* iio_priv (struct iio_dev*) ;
 int inb (int const) ;

__attribute__((used)) static int quad8_get_noise_error(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan)
{
 struct quad8_iio *const priv = iio_priv(indio_dev);
 const int base_offset = priv->base + 2 * chan->channel + 1;

 return !!(inb(base_offset) & QUAD8_FLAG_E);
}
