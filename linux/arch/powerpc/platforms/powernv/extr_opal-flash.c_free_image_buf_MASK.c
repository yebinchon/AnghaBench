#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  status; int /*<<< orphan*/ * data; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IMAGE_INVALID ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_SIZE ; 
 TYPE_1__ image_data ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static void FUNC4(void)
{
	void *addr;
	int size;

	addr = image_data.data;
	size = FUNC1(image_data.size);
	while (size > 0) {
		FUNC0(FUNC3(addr));
		addr += PAGE_SIZE;
		size -= PAGE_SIZE;
	}
	FUNC2(image_data.data);
	image_data.data = NULL;
	image_data.status = IMAGE_INVALID;
}