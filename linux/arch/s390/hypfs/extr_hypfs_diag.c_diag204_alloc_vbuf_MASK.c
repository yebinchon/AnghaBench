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
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 void* diag204_buf ; 
 int diag204_buf_pages ; 
 int /*<<< orphan*/  diag204_buf_vmalloc ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC4(int pages)
{
	/* The buffer has to be page aligned! */
	diag204_buf_vmalloc = FUNC3(FUNC1(PAGE_SIZE, (pages + 1)));
	if (!diag204_buf_vmalloc)
		return FUNC0(-ENOMEM);
	diag204_buf = FUNC2(diag204_buf_vmalloc);
	diag204_buf_pages = pages;
	return diag204_buf;
}