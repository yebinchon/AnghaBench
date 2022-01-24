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
typedef  int /*<<< orphan*/  u8 ;
struct spi_transfer {int /*<<< orphan*/  len; int /*<<< orphan*/  tx_buf; int /*<<< orphan*/ * rx_buf; } ;
struct moxtet {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  count; int /*<<< orphan*/  tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct spi_transfer*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct moxtet *moxtet, u8 *buf)
{
	struct spi_transfer xfer = {
		.rx_buf = buf,
		.tx_buf = moxtet->tx,
		.len = moxtet->count + 1
	};
	int ret;

	FUNC0(&moxtet->lock);

	ret = FUNC2(FUNC3(moxtet->dev), &xfer, 1);

	FUNC1(&moxtet->lock);

	return ret;
}