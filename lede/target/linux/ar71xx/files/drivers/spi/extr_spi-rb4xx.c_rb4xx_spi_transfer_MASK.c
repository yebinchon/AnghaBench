#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct spi_message {TYPE_1__* spi; int /*<<< orphan*/  queue; int /*<<< orphan*/  status; scalar_t__ actual_length; } ;
struct spi_device {int /*<<< orphan*/  master; } ;
struct rb4xx_spi {scalar_t__ cs_wait; int /*<<< orphan*/  lock; scalar_t__ busy; int /*<<< orphan*/  queue; } ;
struct TYPE_2__ {scalar_t__ chip_select; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rb4xx_spi*,unsigned long*) ; 
 struct rb4xx_spi* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi,
			      struct spi_message *m)
{
	struct rb4xx_spi *rbspi = FUNC2(spi->master);
	unsigned long flags;

	m->actual_length = 0;
	m->status = -EINPROGRESS;

	FUNC3(&rbspi->lock, flags);
	FUNC0(&m->queue, &rbspi->queue);
	if (rbspi->busy ||
	    (rbspi->cs_wait >= 0 && rbspi->cs_wait != m->spi->chip_select)) {
		/* job will be done later */
		FUNC4(&rbspi->lock, flags);
		return 0;
	}

	/* process job in current context */
	FUNC1(rbspi, &flags);
	FUNC4(&rbspi->lock, flags);

	return 0;
}