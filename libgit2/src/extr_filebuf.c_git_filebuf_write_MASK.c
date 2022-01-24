#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int (* write ) (TYPE_1__*,void*,size_t) ;size_t buf_size; size_t buf_pos; scalar_t__ do_not_buffer; } ;
typedef  TYPE_1__ git_filebuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned char const*,size_t) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,void*,size_t) ; 

int FUNC4(git_filebuf *file, const void *buff, size_t len)
{
	const unsigned char *buf = buff;

	FUNC0(file);

	if (file->do_not_buffer)
		return file->write(file, (void *)buff, len);

	for (;;) {
		size_t space_left = file->buf_size - file->buf_pos;

		/* cache if it's small */
		if (space_left > len) {
			FUNC1(file, buf, len);
			return 0;
		}

		FUNC1(file, buf, space_left);
		if (FUNC2(file) < 0)
			return -1;

		len -= space_left;
		buf += space_left;
	}
}