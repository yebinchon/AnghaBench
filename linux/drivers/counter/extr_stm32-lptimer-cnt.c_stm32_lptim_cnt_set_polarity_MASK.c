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
struct stm32_lptim_cnt {unsigned int polarity; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 struct stm32_lptim_cnt* FUNC0 (struct iio_dev*) ; 
 scalar_t__ FUNC1 (struct stm32_lptim_cnt*) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev,
					const struct iio_chan_spec *chan,
					unsigned int type)
{
	struct stm32_lptim_cnt *priv = FUNC0(indio_dev);

	if (FUNC1(priv))
		return -EBUSY;

	priv->polarity = type;

	return 0;
}