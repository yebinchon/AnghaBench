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
struct TYPE_4__ {char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t) ; 

__attribute__((used)) static void FUNC2(git_buf *buf)
{
	char *src = buf->ptr, *dst = buf->ptr;
	char c;
	size_t len = 0;

	while ((c = *src++) != '\0') {
		if (!FUNC0(c)) {
			*dst++ = c;
			len++;
		}
	}

	FUNC1(buf, len);
}