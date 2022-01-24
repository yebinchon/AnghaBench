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
struct TYPE_4__ {size_t size; char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 

int FUNC4(git_buf *buf, const char *data, size_t len)
{
	if (len) {
		size_t new_size;

		FUNC2(data);

		FUNC1(&new_size, buf->size, len);
		FUNC1(&new_size, new_size, 1);
		FUNC0(buf, new_size);
		FUNC3(buf->ptr + buf->size, data, len);
		buf->size += len;
		buf->ptr[buf->size] = '\0';
	}
	return 0;
}