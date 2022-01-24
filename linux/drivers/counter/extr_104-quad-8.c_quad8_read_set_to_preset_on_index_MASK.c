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
struct quad8_iio {int /*<<< orphan*/ * preset_enable; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct quad8_iio* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct iio_dev *indio_dev,
	uintptr_t private, const struct iio_chan_spec *chan, char *buf)
{
	const struct quad8_iio *const priv = FUNC0(indio_dev);

	return FUNC1(buf, PAGE_SIZE, "%u\n",
		!priv->preset_enable[chan->channel]);
}