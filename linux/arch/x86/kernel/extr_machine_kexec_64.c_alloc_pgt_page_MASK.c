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
struct kimage {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 struct page* FUNC1 (struct kimage*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct page*) ; 

__attribute__((used)) static void *FUNC3(void *data)
{
	struct kimage *image = (struct kimage *)data;
	struct page *page;
	void *p = NULL;

	page = FUNC1(image, 0);
	if (page) {
		p = FUNC2(page);
		FUNC0(p);
	}

	return p;
}