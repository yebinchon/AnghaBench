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
struct repository {int /*<<< orphan*/  index; } ;
struct diff_filespec {int is_binary; int /*<<< orphan*/  size; scalar_t__ data; TYPE_1__* driver; } ;
struct TYPE_2__ {int binary; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_BINARY ; 
 scalar_t__ FUNC0 (struct diff_filespec*) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct diff_filespec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct repository*,struct diff_filespec*,int /*<<< orphan*/ ) ; 

int FUNC4(struct repository *r,
			    struct diff_filespec *one)
{
	if (one->is_binary == -1) {
		FUNC2(one, r->index);
		if (one->driver->binary != -1)
			one->is_binary = one->driver->binary;
		else {
			if (!one->data && FUNC0(one))
				FUNC3(r, one, CHECK_BINARY);
			if (one->is_binary == -1 && one->data)
				one->is_binary = FUNC1(one->data,
						one->size);
			if (one->is_binary == -1)
				one->is_binary = 0;
		}
	}
	return one->is_binary;
}