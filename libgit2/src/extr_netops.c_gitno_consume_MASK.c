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
struct TYPE_3__ {char const* data; int len; int offset; } ;
typedef  TYPE_1__ gitno_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,int) ; 

void FUNC3(gitno_buffer *buf, const char *ptr)
{
	size_t consumed;

	FUNC0(ptr - buf->data >= 0);
	FUNC0(ptr - buf->data <= (int) buf->len);

	consumed = ptr - buf->data;

	FUNC1(buf->data, ptr, buf->offset - consumed);
	FUNC2(buf->data + buf->offset, 0x0, buf->len - buf->offset);
	buf->offset -= consumed;
}