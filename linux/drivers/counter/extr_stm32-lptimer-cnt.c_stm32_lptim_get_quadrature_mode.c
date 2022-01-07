
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_lptim_cnt {int quadrature_mode; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 struct stm32_lptim_cnt* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int stm32_lptim_get_quadrature_mode(struct iio_dev *indio_dev,
        const struct iio_chan_spec *chan)
{
 struct stm32_lptim_cnt *priv = iio_priv(indio_dev);

 return priv->quadrature_mode;
}
