
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_lptim_cnt {unsigned int quadrature_mode; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EBUSY ;
 struct stm32_lptim_cnt* iio_priv (struct iio_dev*) ;
 scalar_t__ stm32_lptim_is_enabled (struct stm32_lptim_cnt*) ;

__attribute__((used)) static int stm32_lptim_set_quadrature_mode(struct iio_dev *indio_dev,
        const struct iio_chan_spec *chan,
        unsigned int type)
{
 struct stm32_lptim_cnt *priv = iio_priv(indio_dev);

 if (stm32_lptim_is_enabled(priv))
  return -EBUSY;

 priv->quadrature_mode = type;

 return 0;
}
