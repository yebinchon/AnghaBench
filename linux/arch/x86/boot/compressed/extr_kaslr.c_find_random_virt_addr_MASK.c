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
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 unsigned long CONFIG_PHYSICAL_ALIGN ; 
 unsigned long KERNEL_IMAGE_SIZE ; 
 unsigned long FUNC1 (char*) ; 

__attribute__((used)) static unsigned long FUNC2(unsigned long minimum,
					   unsigned long image_size)
{
	unsigned long slots, random_addr;

	/* Make sure minimum is aligned. */
	minimum = FUNC0(minimum, CONFIG_PHYSICAL_ALIGN);
	/* Align image_size for easy slot calculations. */
	image_size = FUNC0(image_size, CONFIG_PHYSICAL_ALIGN);

	/*
	 * There are how many CONFIG_PHYSICAL_ALIGN-sized slots
	 * that can hold image_size within the range of minimum to
	 * KERNEL_IMAGE_SIZE?
	 */
	slots = (KERNEL_IMAGE_SIZE - minimum - image_size) /
		 CONFIG_PHYSICAL_ALIGN + 1;

	random_addr = FUNC1("Virtual") % slots;

	return random_addr * CONFIG_PHYSICAL_ALIGN + minimum;
}