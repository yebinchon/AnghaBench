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
typedef  int uint32_t ;
struct TYPE_4__ {int size; char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,size_t,int) ; 
 char* base85_encode ; 

int FUNC3(git_buf *buf, const char *data, size_t len)
{
	size_t blocks = (len / 4) + !!(len % 4), alloclen;

	FUNC2(&alloclen, blocks, 5);
	FUNC1(&alloclen, alloclen, buf->size);
	FUNC1(&alloclen, alloclen, 1);

	FUNC0(buf, alloclen);

	while (len) {
		uint32_t acc = 0;
		char b85[5];
		int i;

		for (i = 24; i >= 0; i -= 8) {
			uint8_t ch = *data++;
			acc |= ch << i;

			if (--len == 0)
				break;
		}

		for (i = 4; i >= 0; i--) {
			int val = acc % 85;
			acc /= 85;

			b85[i] = base85_encode[val];
		}

		for (i = 0; i < 5; i++)
			buf->ptr[buf->size++] = b85[i];
	}

	buf->ptr[buf->size] = '\0';

	return 0;
}