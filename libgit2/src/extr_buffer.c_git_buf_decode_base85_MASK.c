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
struct TYPE_4__ {size_t size; unsigned int* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t,int) ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int* base85_decode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

int FUNC3(
	git_buf *buf,
	const char *base85,
	size_t base85_len,
	size_t output_len)
{
	size_t orig_size = buf->size, new_size;

	if (base85_len % 5 ||
		output_len > base85_len * 4 / 5) {
		FUNC2(GIT_ERROR_INVALID, "invalid base85 input");
		return -1;
	}

	FUNC1(&new_size, output_len, buf->size);
	FUNC1(&new_size, new_size, 1);
	FUNC0(buf, new_size);

	while (output_len) {
		unsigned acc = 0;
		int de, cnt = 4;
		unsigned char ch;
		do {
			ch = *base85++;
			de = base85_decode[ch];
			if (--de < 0)
				goto on_error;

			acc = acc * 85 + de;
		} while (--cnt);
		ch = *base85++;
		de = base85_decode[ch];
		if (--de < 0)
			goto on_error;

		/* Detect overflow. */
		if (0xffffffff / 85 < acc ||
			0xffffffff - de < (acc *= 85))
			goto on_error;

		acc += de;

		cnt = (output_len < 4) ? (int)output_len : 4;
		output_len -= cnt;
		do {
			acc = (acc << 8) | (acc >> 24);
			buf->ptr[buf->size++] = acc;
		} while (--cnt);
	}

	buf->ptr[buf->size] = 0;

	return 0;

on_error:
	buf->size = orig_size;
	buf->ptr[buf->size] = '\0';

	FUNC2(GIT_ERROR_INVALID, "invalid base85 input");
	return -1;
}