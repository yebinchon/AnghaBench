#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  datalen; } ;
struct TYPE_10__ {TYPE_6__ old_file; TYPE_6__ new_file; int /*<<< orphan*/  contains_data; } ;
struct TYPE_11__ {TYPE_1__ binary; } ;
typedef  TYPE_2__ git_patch ;
struct TYPE_12__ {char const* ptr; size_t size; } ;
typedef  TYPE_3__ git_buf ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 int FUNC0 (TYPE_3__*,char const*,size_t,TYPE_6__*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (char const*,char const*,size_t) ; 

__attribute__((used)) static int FUNC4(
	git_buf *out,
	const char *source,
	size_t source_len,
	git_patch *patch)
{
	git_buf reverse = GIT_BUF_INIT;
	int error = 0;

	if (!patch->binary.contains_data) {
		error = FUNC1("patch does not contain binary data");
		goto done;
	}

	if (!patch->binary.old_file.datalen && !patch->binary.new_file.datalen)
		goto done;

	/* first, apply the new_file delta to the given source */
	if ((error = FUNC0(out, source, source_len,
			&patch->binary.new_file)) < 0)
		goto done;

	/* second, apply the old_file delta to sanity check the result */
	if ((error = FUNC0(&reverse, out->ptr, out->size,
			&patch->binary.old_file)) < 0)
		goto done;

	/* Verify that the resulting file with the reverse patch applied matches the source file */
	if (source_len != reverse.size ||
		(source_len && FUNC3(source, reverse.ptr, source_len) != 0)) {
		error = FUNC1("binary patch did not apply cleanly");
		goto done;
	}

done:
	if (error < 0)
		FUNC2(out);

	FUNC2(&reverse);
	return error;
}