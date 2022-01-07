
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_lptim_cnt {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EBUSY ;
 int EINVAL ;

 struct stm32_lptim_cnt* iio_priv (struct iio_dev*) ;
 int stm32_lptim_is_enabled (struct stm32_lptim_cnt*) ;
 int stm32_lptim_set_enable_state (struct stm32_lptim_cnt*,int) ;
 int stm32_lptim_setup (struct stm32_lptim_cnt*,int) ;

__attribute__((used)) static int stm32_lptim_write_raw(struct iio_dev *indio_dev,
     struct iio_chan_spec const *chan,
     int val, int val2, long mask)
{
 struct stm32_lptim_cnt *priv = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 128:
  if (val < 0 || val > 1)
   return -EINVAL;


  ret = stm32_lptim_is_enabled(priv);
  if ((ret < 0) || (!ret && !val))
   return ret;
  if (val && ret)
   return -EBUSY;

  ret = stm32_lptim_setup(priv, val);
  if (ret)
   return ret;
  return stm32_lptim_set_enable_state(priv, val);

 default:
  return -EINVAL;
 }
}
