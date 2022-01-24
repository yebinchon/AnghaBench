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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct rb4xx_cpld {int dummy; } ;

/* Variables and functions */
 struct rb4xx_cpld* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rb4xx_cpld*) ; 
 int /*<<< orphan*/ * rb4xx_cpld ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi)
{
	struct rb4xx_cpld *cpld;

	rb4xx_cpld = NULL;
	cpld = FUNC0(&spi->dev);
	FUNC1(&spi->dev, NULL);
	FUNC2(cpld);

	return 0;
}