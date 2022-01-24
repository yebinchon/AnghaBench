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
struct strbuf {size_t len; } ;
struct line_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct line_buffer*,struct strbuf*,size_t) ; 
 int FUNC1 (struct line_buffer*) ; 

__attribute__((used)) static int FUNC2(struct line_buffer *file,
				struct strbuf *buf, size_t width)
{
	FUNC0(file, buf, width - buf->len);
	if (buf->len != width)
		return FUNC1(file);
	return 0;
}