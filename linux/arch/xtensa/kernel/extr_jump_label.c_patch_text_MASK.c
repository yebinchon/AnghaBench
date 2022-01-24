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
struct patch {unsigned long addr; size_t sz; void const* data; int /*<<< orphan*/  cpu_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONFIG_SMP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,void const*,size_t) ; 
 int /*<<< orphan*/  patch_text_stop_machine ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct patch*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(unsigned long addr, const void *data, size_t sz)
{
	if (FUNC1(CONFIG_SMP)) {
		struct patch patch = {
			.cpu_count = FUNC0(0),
			.addr = addr,
			.sz = sz,
			.data = data,
		};
		FUNC5(patch_text_stop_machine,
					&patch, NULL);
	} else {
		unsigned long flags;

		FUNC3(flags);
		FUNC4(addr, data, sz);
		FUNC2(flags);
	}
}