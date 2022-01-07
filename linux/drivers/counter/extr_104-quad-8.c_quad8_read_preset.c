
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quad8_iio {int* preset; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct quad8_iio* iio_priv (struct iio_dev*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t quad8_read_preset(struct iio_dev *indio_dev, uintptr_t private,
 const struct iio_chan_spec *chan, char *buf)
{
 const struct quad8_iio *const priv = iio_priv(indio_dev);

 return snprintf(buf, PAGE_SIZE, "%u\n", priv->preset[chan->channel]);
}
