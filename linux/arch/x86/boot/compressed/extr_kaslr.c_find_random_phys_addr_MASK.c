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
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONFIG_PHYSICAL_ALIGN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ memmap_too_large ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 unsigned long FUNC4 () ; 

__attribute__((used)) static unsigned long FUNC5(unsigned long minimum,
					   unsigned long image_size)
{
	/* Check if we had too many memmaps. */
	if (memmap_too_large) {
		FUNC1("Aborted memory entries scan (more than 4 memmap= args)!\n");
		return 0;
	}

	/* Make sure minimum is aligned. */
	minimum = FUNC0(minimum, CONFIG_PHYSICAL_ALIGN);

	if (FUNC3(minimum, image_size))
		return FUNC4();

	FUNC2(minimum, image_size);
	return FUNC4();
}