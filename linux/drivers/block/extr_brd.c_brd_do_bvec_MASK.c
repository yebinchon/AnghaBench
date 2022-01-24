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
struct brd_device {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,struct brd_device*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct brd_device*,void*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (struct brd_device*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 void* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 scalar_t__ FUNC6 (unsigned int) ; 

__attribute__((used)) static int FUNC7(struct brd_device *brd, struct page *page,
			unsigned int len, unsigned int off, unsigned int op,
			sector_t sector)
{
	void *mem;
	int err = 0;

	if (FUNC6(op)) {
		err = FUNC2(brd, sector, len);
		if (err)
			goto out;
	}

	mem = FUNC4(page);
	if (!FUNC6(op)) {
		FUNC0(mem + off, brd, sector, len);
		FUNC3(page);
	} else {
		FUNC3(page);
		FUNC1(brd, mem + off, sector, len);
	}
	FUNC5(mem);

out:
	return err;
}