#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stm32_lptim_cnt {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_ENABLE 128 
 struct stm32_lptim_cnt* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct stm32_lptim_cnt*) ; 
 int FUNC2 (struct stm32_lptim_cnt*,int) ; 
 int FUNC3 (struct stm32_lptim_cnt*,int) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
				 struct iio_chan_spec const *chan,
				 int val, int val2, long mask)
{
	struct stm32_lptim_cnt *priv = FUNC0(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_ENABLE:
		if (val < 0 || val > 1)
			return -EINVAL;

		/* Check nobody uses the timer, or already disabled/enabled */
		ret = FUNC1(priv);
		if ((ret < 0) || (!ret && !val))
			return ret;
		if (val && ret)
			return -EBUSY;

		ret = FUNC3(priv, val);
		if (ret)
			return ret;
		return FUNC2(priv, val);

	default:
		return -EINVAL;
	}
}