#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  path; } ;
struct TYPE_8__ {scalar_t__ status; TYPE_1__ new_file; } ;
typedef  TYPE_2__ git_diff_delta ;
typedef  int /*<<< orphan*/  git_buf ;
struct TYPE_10__ {int /*<<< orphan*/  content_len; int /*<<< orphan*/  content; int /*<<< orphan*/  origin; } ;
struct TYPE_9__ {int flags; int (* print_cb ) (TYPE_2__ const*,int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  payload; TYPE_5__ line; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_3__ diff_print_info ;

/* Variables and functions */
 scalar_t__ GIT_DELTA_UNMODIFIED ; 
 int /*<<< orphan*/  GIT_DIFF_LINE_FILE_HDR ; 
 int GIT_DIFF_SHOW_UNMODIFIED ; 
 int /*<<< orphan*/  FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__ const*,int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(
	const git_diff_delta *delta, float progress, void *data)
{
	diff_print_info *pi = data;
	git_buf *out = pi->buf;

	FUNC0(progress);

	if ((pi->flags & GIT_DIFF_SHOW_UNMODIFIED) == 0 &&
		delta->status == GIT_DELTA_UNMODIFIED)
		return 0;

	FUNC1(out);
	FUNC6(out, delta->new_file.path);
	FUNC5(out, '\n');
	if (FUNC4(out))
		return -1;

	pi->line.origin      = GIT_DIFF_LINE_FILE_HDR;
	pi->line.content     = FUNC2(out);
	pi->line.content_len = FUNC3(out);

	return pi->print_cb(delta, NULL, &pi->line, pi->payload);
}