#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ mode; char const* path; } ;
struct TYPE_8__ {scalar_t__ mode; char const* path; } ;
struct TYPE_10__ {TYPE_2__ old_file; TYPE_1__ new_file; int /*<<< orphan*/  status; } ;
typedef  TYPE_3__ git_diff_delta ;
typedef  int /*<<< orphan*/  git_buf ;
struct TYPE_12__ {int /*<<< orphan*/  content_len; int /*<<< orphan*/  content; int /*<<< orphan*/  origin; } ;
struct TYPE_11__ {int (* strcomp ) (char const*,char const*) ;int flags; int (* print_cb ) (TYPE_3__ const*,int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  payload; TYPE_6__ line; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_4__ diff_print_info ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DIFF_LINE_FILE_HDR ; 
 int GIT_DIFF_SHOW_UNMODIFIED ; 
 int /*<<< orphan*/  FUNC0 (float) ; 
 char FUNC1 (scalar_t__) ; 
 int FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char,char const*,...) ; 
 char FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_3__ const*,int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(
	const git_diff_delta *delta, float progress, void *data)
{
	diff_print_info *pi = data;
	git_buf *out = pi->buf;
	char old_suffix, new_suffix, code = FUNC8(delta->status);
	int(*strcomp)(const char *, const char *) = pi->strcomp ?
		pi->strcomp : git__strcmp;

	FUNC0(progress);

	if ((pi->flags & GIT_DIFF_SHOW_UNMODIFIED) == 0 && code == ' ')
		return 0;

	old_suffix = FUNC1(delta->old_file.mode);
	new_suffix = FUNC1(delta->new_file.mode);

	FUNC3(out);

	if (delta->old_file.path != delta->new_file.path &&
		strcomp(delta->old_file.path,delta->new_file.path) != 0)
		FUNC7(out, "%c\t%s%c %s%c\n", code,
			delta->old_file.path, old_suffix, delta->new_file.path, new_suffix);
	else if (delta->old_file.mode != delta->new_file.mode &&
		delta->old_file.mode != 0 && delta->new_file.mode != 0)
		FUNC7(out, "%c\t%s%c %s%c\n", code,
			delta->old_file.path, old_suffix, delta->new_file.path, new_suffix);
	else if (old_suffix != ' ')
		FUNC7(out, "%c\t%s%c\n", code, delta->old_file.path, old_suffix);
	else
		FUNC7(out, "%c\t%s\n", code, delta->old_file.path);
	if (FUNC6(out))
		return -1;

	pi->line.origin      = GIT_DIFF_LINE_FILE_HDR;
	pi->line.content     = FUNC4(out);
	pi->line.content_len = FUNC5(out);

	return pi->print_cb(delta, NULL, &pi->line, pi->payload);
}