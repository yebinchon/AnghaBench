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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ KUSER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,scalar_t__) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * kuser_page ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static int FUNC4(void)
{
	extern char __kuser_helper_start[], __kuser_helper_end[];
	int kuser_sz = __kuser_helper_end - __kuser_helper_start;
	unsigned long vpage;

	vpage = FUNC1(GFP_ATOMIC);
	if (!vpage)
		return -ENOMEM;

	/* Copy kuser helpers */
	FUNC2((void *)vpage, __kuser_helper_start, kuser_sz);

	FUNC0(vpage, vpage + KUSER_SIZE);
	kuser_page[0] = FUNC3(vpage);

	return 0;
}