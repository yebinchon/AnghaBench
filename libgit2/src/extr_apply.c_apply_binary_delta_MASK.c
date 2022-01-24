#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ inflatedlen; scalar_t__ type; int /*<<< orphan*/  datalen; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ git_diff_binary_file ;
struct TYPE_12__ {scalar_t__ size; size_t asize; void* ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 scalar_t__ GIT_DIFF_BINARY_DELTA ; 
 scalar_t__ GIT_DIFF_BINARY_LITERAL ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*) ; 
 int FUNC4 (void**,size_t*,void*,size_t,void*,scalar_t__) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(
	git_buf *out,
	const char *source,
	size_t source_len,
	git_diff_binary_file *binary_file)
{
	git_buf inflated = GIT_BUF_INIT;
	int error = 0;

	/* no diff means identical contents */
	if (binary_file->datalen == 0)
		return FUNC2(out, source, source_len);

	error = FUNC5(&inflated,
		binary_file->data, binary_file->datalen);

	if (!error && inflated.size != binary_file->inflatedlen) {
		error = FUNC0("inflated delta does not match expected length");
		FUNC1(out);
	}

	if (error < 0)
		goto done;

	if (binary_file->type == GIT_DIFF_BINARY_DELTA) {
		void *data;
		size_t data_len;

		error = FUNC4(&data, &data_len, (void *)source, source_len,
			(void *)inflated.ptr, inflated.size);

		out->ptr = data;
		out->size = data_len;
		out->asize = data_len;
	}
	else if (binary_file->type == GIT_DIFF_BINARY_LITERAL) {
		FUNC3(out, &inflated);
	}
	else {
		error = FUNC0("unknown binary delta type");
		goto done;
	}

done:
	FUNC1(&inflated);
	return error;
}