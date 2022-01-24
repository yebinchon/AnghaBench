#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t uintmax_t ;
struct strbuf {scalar_t__ len; } ;
struct line_buffer {int dummy; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (struct line_buffer*,struct strbuf*,size_t) ; 
 int FUNC2 (struct line_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 

__attribute__((used)) static int FUNC4(struct line_buffer *delta, off_t *delta_len,
		      struct strbuf *buf, size_t len)
{
	FUNC0(*delta_len >= 0);
	FUNC3(buf);
	if (len > (uintmax_t) *delta_len ||
	    FUNC1(delta, buf, len) != len)
		return FUNC2(delta);
	*delta_len -= buf->len;
	return 0;
}