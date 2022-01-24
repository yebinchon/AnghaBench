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

/* Variables and functions */
 int EINVAL ; 
 int GPIO_AF ; 
 int GPIO_AOUT_SHIFT ; 
 int GPIO_BOUT_SHIFT ; 
 int GPIO_OCR_MASK ; 
 int GPIO_OCR_SHIFT ; 
 int GPIO_OUT ; 
 int GPIO_PF ; 
 int GPIO_PIN_MASK ; 
 int GPIO_PORT_MASK ; 
 int GPIO_PORT_SHIFT ; 
 int GPIO_PUEN ; 
 unsigned int imx_iomuxv1_numports ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,unsigned int,int) ; 

int FUNC7(int gpio_mode)
{
	unsigned int pin = gpio_mode & GPIO_PIN_MASK;
	unsigned int port = (gpio_mode & GPIO_PORT_MASK) >> GPIO_PORT_SHIFT;
	unsigned int ocr = (gpio_mode & GPIO_OCR_MASK) >> GPIO_OCR_SHIFT;
	unsigned int aout = (gpio_mode >> GPIO_AOUT_SHIFT) & 3;
	unsigned int bout = (gpio_mode >> GPIO_BOUT_SHIFT) & 3;

	if (port >= imx_iomuxv1_numports)
		return -EINVAL;

	/* Pullup enable */
	FUNC6(port, pin, gpio_mode & GPIO_PUEN);

	/* Data direction */
	FUNC0(port, pin, gpio_mode & GPIO_OUT);

	/* Primary / alternate function */
	FUNC2(port, pin, gpio_mode & GPIO_AF);

	/* use as gpio? */
	FUNC1(port, pin, !(gpio_mode & (GPIO_PF | GPIO_AF)));

	FUNC5(port, pin, ocr);

	FUNC3(port, pin, aout);

	FUNC4(port, pin, bout);

	return 0;
}