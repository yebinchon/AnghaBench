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
struct spi_device {int dummy; } ;
struct moxtet {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  dev_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  __unregister ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct moxtet*) ; 
 int /*<<< orphan*/  FUNC2 (struct moxtet*) ; 
 int /*<<< orphan*/  FUNC3 (struct moxtet*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct moxtet* FUNC5 (struct spi_device*) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi)
{
	struct moxtet *moxtet = FUNC5(spi);

	FUNC1(moxtet->dev_irq, moxtet);

	FUNC2(moxtet);

	FUNC3(moxtet);

	FUNC0(moxtet->dev, NULL, __unregister);

	FUNC4(&moxtet->lock);

	return 0;
}