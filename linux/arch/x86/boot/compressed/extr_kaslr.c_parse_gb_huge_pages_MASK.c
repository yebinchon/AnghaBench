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
 scalar_t__ PUD_SIZE ; 
 int /*<<< orphan*/  max_gb_huge_pages ; 
 scalar_t__ FUNC0 (char*,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(char *param, char *val)
{
	static bool gbpage_sz;
	char *p;

	if (!FUNC2(param, "hugepagesz")) {
		p = val;
		if (FUNC0(p, &p) != PUD_SIZE) {
			gbpage_sz = false;
			return;
		}

		if (gbpage_sz)
			FUNC3("Repeatedly set hugeTLB page size of 1G!\n");
		gbpage_sz = true;
		return;
	}

	if (!FUNC2(param, "hugepages") && gbpage_sz) {
		p = val;
		max_gb_huge_pages = FUNC1(p, &p, 0);
		return;
	}
}