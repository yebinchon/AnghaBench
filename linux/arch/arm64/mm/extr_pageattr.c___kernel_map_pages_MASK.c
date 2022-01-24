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
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  rodata_full ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int,int) ; 

void FUNC3(struct page *page, int numpages, int enable)
{
	if (!FUNC0() && !rodata_full)
		return;

	FUNC2((unsigned long)FUNC1(page), numpages, enable);
}