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
struct platform_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fifo; scalar_t__ dev; int /*<<< orphan*/  region_size; int /*<<< orphan*/  ioport1; int /*<<< orphan*/  irq; int /*<<< orphan*/  input_fifo; int /*<<< orphan*/  input_jog_dev; int /*<<< orphan*/  input_key_dev; int /*<<< orphan*/  input_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ sonypi_device ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  sonypi_irq ; 
 int /*<<< orphan*/  sonypi_misc_device ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ useinput ; 

__attribute__((used)) static int FUNC10(struct platform_device *dev)
{
	FUNC8();

	FUNC9(sonypi_device.irq);
	FUNC0(&sonypi_device.input_work);

	if (useinput) {
		FUNC2(sonypi_device.input_key_dev);
		FUNC2(sonypi_device.input_jog_dev);
		FUNC3(&sonypi_device.input_fifo);
	}

	FUNC4(&sonypi_misc_device);

	FUNC1(sonypi_device.irq, sonypi_irq);
	FUNC7(sonypi_device.ioport1, sonypi_device.region_size);

	if (sonypi_device.dev) {
		FUNC6(sonypi_device.dev);
		FUNC5(sonypi_device.dev);
	}

	FUNC3(&sonypi_device.fifo);

	return 0;
}