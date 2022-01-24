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
typedef  int uint8_t ;
struct TYPE_4__ {int size; char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,size_t,int) ; 
 char* base64_encode ; 

int FUNC3(git_buf *buf, const char *data, size_t len)
{
	size_t extra = len % 3;
	uint8_t *write, a, b, c;
	const uint8_t *read = (const uint8_t *)data;
	size_t blocks = (len / 3) + !!extra, alloclen;

	FUNC1(&blocks, blocks, 1);
	FUNC2(&alloclen, blocks, 4);
	FUNC1(&alloclen, alloclen, buf->size);

	FUNC0(buf, alloclen);
	write = (uint8_t *)&buf->ptr[buf->size];

	/* convert each run of 3 bytes into 4 output bytes */
	for (len -= extra; len > 0; len -= 3) {
		a = *read++;
		b = *read++;
		c = *read++;

		*write++ = base64_encode[a >> 2];
		*write++ = base64_encode[(a & 0x03) << 4 | b >> 4];
		*write++ = base64_encode[(b & 0x0f) << 2 | c >> 6];
		*write++ = base64_encode[c & 0x3f];
	}

	if (extra > 0) {
		a = *read++;
		b = (extra > 1) ? *read++ : 0;

		*write++ = base64_encode[a >> 2];
		*write++ = base64_encode[(a & 0x03) << 4 | b >> 4];
		*write++ = (extra > 1) ? base64_encode[(b & 0x0f) << 2] : '=';
		*write++ = '=';
	}

	buf->size = ((char *)write) - buf->ptr;
	buf->ptr[buf->size] = '\0';

	return 0;
}