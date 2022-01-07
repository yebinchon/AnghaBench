
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_lptim_cnt {int polarity; int quadrature_mode; int regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;



 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int STM32_LPTIM_CNT ;
 struct stm32_lptim_cnt* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,int ,int*) ;
 int stm32_lptim_is_enabled (struct stm32_lptim_cnt*) ;

__attribute__((used)) static int stm32_lptim_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int *val, int *val2, long mask)
{
 struct stm32_lptim_cnt *priv = iio_priv(indio_dev);
 u32 dat;
 int ret;

 switch (mask) {
 case 129:
  ret = regmap_read(priv->regmap, STM32_LPTIM_CNT, &dat);
  if (ret)
   return ret;
  *val = dat;
  return IIO_VAL_INT;

 case 130:
  ret = stm32_lptim_is_enabled(priv);
  if (ret < 0)
   return ret;
  *val = ret;
  return IIO_VAL_INT;

 case 128:

  *val = 1;
  *val2 = 0;
  if (priv->quadrature_mode) {





   if (priv->polarity > 1)
    *val2 = 2;
   else
    *val2 = 1;
  }
  return IIO_VAL_FRACTIONAL_LOG2;

 default:
  return -EINVAL;
 }
}
