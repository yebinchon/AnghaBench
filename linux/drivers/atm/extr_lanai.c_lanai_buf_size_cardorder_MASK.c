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
struct lanai_buffer {int dummy; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lanai_buffer const*) ; 

__attribute__((used)) static int FUNC2(const struct lanai_buffer *buf)
{
	int order = FUNC0(FUNC1(buf)) + (PAGE_SHIFT - 10);

	/* This can only happen if PAGE_SIZE is gigantic, but just in case */
	if (order > 7)
		order = 7;
	return order;
}