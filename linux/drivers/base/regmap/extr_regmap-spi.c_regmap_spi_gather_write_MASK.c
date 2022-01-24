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
struct spi_transfer {void const* tx_buf; size_t len; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_message*) ; 
 int FUNC2 (struct spi_device*,struct spi_message*) ; 
 struct spi_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(void *context,
				   const void *reg, size_t reg_len,
				   const void *val, size_t val_len)
{
	struct device *dev = context;
	struct spi_device *spi = FUNC3(dev);
	struct spi_message m;
	struct spi_transfer t[2] = { { .tx_buf = reg, .len = reg_len, },
				     { .tx_buf = val, .len = val_len, }, };

	FUNC1(&m);
	FUNC0(&t[0], &m);
	FUNC0(&t[1], &m);

	return FUNC2(spi, &m);
}