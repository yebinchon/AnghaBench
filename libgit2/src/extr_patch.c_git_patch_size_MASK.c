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
struct TYPE_4__ {size_t content_size; int /*<<< orphan*/  delta; scalar_t__ header_size; scalar_t__ context_size; } ;
typedef  TYPE_1__ git_patch ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

size_t FUNC5(
	git_patch *patch,
	int include_context,
	int include_hunk_headers,
	int include_file_headers)
{
	size_t out;

	FUNC0(patch);

	out = patch->content_size;

	if (!include_context)
		out -= patch->context_size;

	if (include_hunk_headers)
		out += patch->header_size;

	if (include_file_headers) {
		git_buf file_header = GIT_BUF_INIT;

		if (FUNC3(
			&file_header, patch->delta, NULL, NULL, 0) < 0)
			FUNC4();
		else
			out += FUNC2(&file_header);

		FUNC1(&file_header);
	}

	return out;
}