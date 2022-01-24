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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (struct page*) ; 
 void* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (struct page*) ; 

void FUNC8(struct page *page)
{
	int i;
	void *start;

	FUNC0(!FUNC1(page));

	for (i = 0; i < FUNC4(page); i++) {
		if (!FUNC2(page)) {
			FUNC3(FUNC7(page+i));
		} else {
			start = FUNC5(page+i);
			FUNC3(start);
			FUNC6(start);
		}
	}
}