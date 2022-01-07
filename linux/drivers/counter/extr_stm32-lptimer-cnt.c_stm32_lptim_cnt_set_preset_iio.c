
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_lptim_cnt {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef int ssize_t ;


 struct stm32_lptim_cnt* iio_priv (struct iio_dev*) ;
 int stm32_lptim_cnt_set_ceiling (struct stm32_lptim_cnt*,char const*,size_t) ;

__attribute__((used)) static ssize_t stm32_lptim_cnt_set_preset_iio(struct iio_dev *indio_dev,
           uintptr_t private,
           const struct iio_chan_spec *chan,
           const char *buf, size_t len)
{
 struct stm32_lptim_cnt *priv = iio_priv(indio_dev);

 return stm32_lptim_cnt_set_ceiling(priv, buf, len);
}
