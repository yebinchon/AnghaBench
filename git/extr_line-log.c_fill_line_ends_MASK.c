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
struct repository {int dummy; } ;
struct diff_filespec {char* data; int size; int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,long,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,long) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct repository*,struct diff_filespec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct repository *r,
			   struct diff_filespec *spec,
			   long *lines,
			   unsigned long **line_ends)
{
	int num = 0, size = 50;
	long cur = 0;
	unsigned long *ends = NULL;
	char *data = NULL;

	if (FUNC4(r, spec, 0))
		FUNC3("Cannot read blob %s", FUNC5(&spec->oid));

	FUNC0(ends, size);
	ends[cur++] = 0;
	data = spec->data;
	while (num < spec->size) {
		if (data[num] == '\n' || num == spec->size - 1) {
			FUNC1(ends, (cur + 1), size);
			ends[cur++] = num;
		}
		num++;
	}

	/* shrink the array to fit the elements */
	FUNC2(ends, cur);
	*lines = cur-1;
	*line_ends = ends;
}