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
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*,struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,struct page*,unsigned int,unsigned int,int*) ; 
 scalar_t__ FUNC2 (struct bio*,unsigned int) ; 

int FUNC3(struct bio *bio, struct page *page,
		 unsigned int len, unsigned int offset)
{
	bool same_page = false;

	if (!FUNC1(bio, page, len, offset, &same_page)) {
		if (FUNC2(bio, len))
			return 0;
		FUNC0(bio, page, len, offset);
	}
	return len;
}