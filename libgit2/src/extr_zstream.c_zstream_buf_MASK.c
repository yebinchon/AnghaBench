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
typedef  int /*<<< orphan*/  git_zstream_t ;
typedef  int /*<<< orphan*/  git_zstream ;
struct TYPE_4__ {size_t asize; size_t size; char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ZSTREAM_INIT ; 
 int FUNC0 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,void const*,size_t) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(git_buf *out, const void *in, size_t in_len, git_zstream_t type)
{
	git_zstream zs = GIT_ZSTREAM_INIT;
	int error = 0;

	if ((error = FUNC4(&zs, type)) < 0)
		return error;

	if ((error = FUNC5(&zs, in, in_len)) < 0)
		goto done;

	while (!FUNC1(&zs)) {
		size_t step = FUNC6(&zs), written;

		if ((error = FUNC0(out, step)) < 0)
			goto done;

		written = out->asize - out->size;

		if ((error = FUNC3(
				out->ptr + out->size, &written, &zs)) < 0)
			goto done;

		out->size += written;
	}

	/* NULL terminate for consistency if possible */
	if (out->size < out->asize)
		out->ptr[out->size] = '\0';

done:
	FUNC2(&zs);
	return error;
}