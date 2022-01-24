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
struct topa {int dummy; } ;
struct pt_buffer {unsigned long nr_pages; int /*<<< orphan*/  last; int /*<<< orphan*/  first; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int end; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PT_CAP_topa_multiple_entries ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_buffer*) ; 
 struct topa* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pt_buffer*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pt_buffer*,struct topa*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct pt_buffer *buf, int cpu,
			       unsigned long nr_pages, gfp_t gfp)
{
	struct topa *topa;
	int err;

	topa = FUNC4(cpu, gfp);
	if (!topa)
		return -ENOMEM;

	FUNC6(buf, topa);

	while (buf->nr_pages < nr_pages) {
		err = FUNC5(buf, cpu, gfp);
		if (err) {
			FUNC2(buf);
			return -ENOMEM;
		}
	}

	/* link last table to the first one, unless we're double buffering */
	if (FUNC1(PT_CAP_topa_multiple_entries)) {
		FUNC0(buf->last, -1)->base = FUNC7(buf->first);
		FUNC0(buf->last, -1)->end = 1;
	}

	FUNC3(buf);
	return 0;
}