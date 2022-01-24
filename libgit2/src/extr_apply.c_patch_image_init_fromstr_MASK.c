#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lines; int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ patch_image ;
typedef  int /*<<< orphan*/  git_diff_line ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*,char,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int,int) ; 

__attribute__((used)) static int FUNC7(
	patch_image *out, const char *in, size_t in_len)
{
	git_diff_line *line;
	const char *start, *end;

	FUNC5(out, 0x0, sizeof(patch_image));

	FUNC1(&out->pool, sizeof(git_diff_line));

	for (start = in; start < in + in_len; start = end) {
		end = FUNC4(start, '\n', in_len - (start - in));

		if (end == NULL)
			end = in + in_len;

		else if (end < in + in_len)
			end++;

		line = FUNC2(&out->pool, 1);
		FUNC0(line);

		if (FUNC3(&out->lines, line) < 0)
			return -1;

		FUNC6(line, start, (end - start), (start - in));
	}

	return 0;
}