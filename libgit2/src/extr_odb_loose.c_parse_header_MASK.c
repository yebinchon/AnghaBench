#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_3__ {size_t size; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ obj_hdr ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t*,size_t,int) ; 
 int /*<<< orphan*/  GIT_ERROR_OBJECT ; 
 scalar_t__ SIZE_MAX ; 
 scalar_t__ FUNC1 (scalar_t__*,char const*,size_t,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,size_t) ; 

__attribute__((used)) static int FUNC4(
	obj_hdr *out,
       	size_t *out_len,
	const unsigned char *_data,
	size_t data_len)
{
	const char *data = (char *)_data;
	size_t i, typename_len, size_idx, size_len;
	int64_t size;

	*out_len = 0;

	/* find the object type name */
	for (i = 0, typename_len = 0; i < data_len; i++, typename_len++) {
		if (data[i] == ' ')
			break;
	}

	if (typename_len == data_len)
		goto on_error;

	out->type = FUNC3(data, typename_len);

	size_idx = typename_len + 1;
	for (i = size_idx, size_len = 0; i < data_len; i++, size_len++) {
		if (data[i] == '\0')
			break;
	}

	if (i == data_len)
		goto on_error;

	if (FUNC1(&size, &data[size_idx], size_len, NULL, 10) < 0 ||
		size < 0)
		goto on_error;

	if ((uint64_t)size > SIZE_MAX) {
		FUNC2(GIT_ERROR_OBJECT, "object is larger than available memory");
		return -1;
	}

	out->size = (size_t)size;

	if (FUNC0(out_len, i, 1))
		goto on_error;

	return 0;

on_error:
	FUNC2(GIT_ERROR_OBJECT, "failed to parse loose object: invalid header");
	return -1;
}