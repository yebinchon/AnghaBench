#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_diff_binary_t ;
struct TYPE_6__ {size_t size; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_DIFF_BINARY_DELTA ; 
 int /*<<< orphan*/  GIT_DIFF_BINARY_LITERAL ; 
 int GIT_EBUFS ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 char* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (void**,size_t*,char const*,size_t,char const*,size_t,size_t) ; 
 int FUNC5 (TYPE_1__*,void*,size_t) ; 

__attribute__((used)) static int FUNC6(
	git_diff_binary_t *out_type,
	char **out_data,
	size_t *out_datalen,
	size_t *out_inflatedlen,
	const char *a_data,
	size_t a_datalen,
	const char *b_data,
	size_t b_datalen)
{
	git_buf deflate = GIT_BUF_INIT, delta = GIT_BUF_INIT;
	size_t delta_data_len = 0;
	int error;

	/* The git_delta function accepts unsigned long only */
	if (!FUNC1(a_datalen) || !FUNC1(b_datalen))
		return GIT_EBUFS;

	if ((error = FUNC5(&deflate, b_data, b_datalen)) < 0)
		goto done;

	/* The git_delta function accepts unsigned long only */
	if (!FUNC1(deflate.size)) {
		error = GIT_EBUFS;
		goto done;
	}

	if (a_datalen && b_datalen) {
		void *delta_data;

		error = FUNC4(&delta_data, &delta_data_len,
			a_data, a_datalen,
			b_data, b_datalen,
			deflate.size);

		if (error == 0) {
			error = FUNC5(
				&delta, delta_data, delta_data_len);

			FUNC0(delta_data);
		} else if (error == GIT_EBUFS) {
			error = 0;
		}

		if (error < 0)
			goto done;
	}

	if (delta.size && delta.size < deflate.size) {
		*out_type = GIT_DIFF_BINARY_DELTA;
		*out_datalen = delta.size;
		*out_data = FUNC2(&delta);
		*out_inflatedlen = delta_data_len;
	} else {
		*out_type = GIT_DIFF_BINARY_LITERAL;
		*out_datalen = deflate.size;
		*out_data = FUNC2(&deflate);
		*out_inflatedlen = b_datalen;
	}

done:
	FUNC3(&deflate);
	FUNC3(&delta);

	return error;
}