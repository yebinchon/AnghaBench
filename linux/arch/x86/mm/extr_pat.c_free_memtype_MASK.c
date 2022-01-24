#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct memtype {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; } ;
struct TYPE_3__ {scalar_t__ (* is_untracked_pat_range ) (scalar_t__,scalar_t__) ;} ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct memtype*) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__) ; 
 int FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct memtype*) ; 
 int /*<<< orphan*/  memtype_lock ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct memtype* FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 
 TYPE_1__ x86_platform ; 

int FUNC12(u64 start, u64 end)
{
	int err = -EINVAL;
	int is_range_ram;
	struct memtype *entry;

	if (!FUNC4())
		return 0;

	start = FUNC8(start);
	end = FUNC8(end);

	/* Low ISA region is always mapped WB. No need to track */
	if (x86_platform.is_untracked_pat_range(start, end))
		return 0;

	is_range_ram = FUNC5(start, end);
	if (is_range_ram == 1) {

		err = FUNC2(start, end);

		return err;
	} else if (is_range_ram < 0) {
		return -EINVAL;
	}

	FUNC9(&memtype_lock);
	entry = FUNC7(start, end);
	FUNC10(&memtype_lock);

	if (FUNC0(entry)) {
		FUNC6("x86/PAT: %s:%d freeing invalid memtype [mem %#010Lx-%#010Lx]\n",
			current->comm, current->pid, start, end - 1);
		return -EINVAL;
	}

	FUNC3(entry);

	FUNC1("free_memtype request [mem %#010Lx-%#010Lx]\n", start, end - 1);

	return 0;
}