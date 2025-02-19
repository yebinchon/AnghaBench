
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quad8_iio {int* count_mode; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;


 struct quad8_iio* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int quad8_get_count_mode(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan)
{
 const struct quad8_iio *const priv = iio_priv(indio_dev);

 return priv->count_mode[chan->channel];
}
