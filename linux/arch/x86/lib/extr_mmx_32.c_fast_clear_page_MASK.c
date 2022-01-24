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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(void *page)
{
	int i;

	FUNC0();

	__asm__ __volatile__ (
		"  pxor %%mm0, %%mm0\n" : :
	);

	for (i = 0; i < 4096/128; i++) {
		__asm__ __volatile__ (
		"  movq %%mm0, (%0)\n"
		"  movq %%mm0, 8(%0)\n"
		"  movq %%mm0, 16(%0)\n"
		"  movq %%mm0, 24(%0)\n"
		"  movq %%mm0, 32(%0)\n"
		"  movq %%mm0, 40(%0)\n"
		"  movq %%mm0, 48(%0)\n"
		"  movq %%mm0, 56(%0)\n"
		"  movq %%mm0, 64(%0)\n"
		"  movq %%mm0, 72(%0)\n"
		"  movq %%mm0, 80(%0)\n"
		"  movq %%mm0, 88(%0)\n"
		"  movq %%mm0, 96(%0)\n"
		"  movq %%mm0, 104(%0)\n"
		"  movq %%mm0, 112(%0)\n"
		"  movq %%mm0, 120(%0)\n"
			: : "r" (page) : "memory");
		page += 128;
	}

	FUNC1();
}