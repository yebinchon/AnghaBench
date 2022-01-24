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
 int /*<<< orphan*/ * diag204_buf ; 
 int /*<<< orphan*/ * diag204_buf_vmalloc ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void)
{
	if (!diag204_buf)
		return;
	if (diag204_buf_vmalloc) {
		FUNC1(diag204_buf_vmalloc);
		diag204_buf_vmalloc = NULL;
	} else {
		FUNC0((unsigned long) diag204_buf, 0);
	}
	diag204_buf = NULL;
}