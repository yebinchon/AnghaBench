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
struct strbuf {size_t len; char* buf; int /*<<< orphan*/  alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (size_t,size_t) ; 

void FUNC3(struct strbuf *sb, size_t extra)
{
	int new_buf = !sb->alloc;
	if (FUNC2(extra, 1) ||
	    FUNC2(sb->len, extra + 1))
		FUNC1("you want to use way too much memory");
	if (new_buf)
		sb->buf = NULL;
	FUNC0(sb->buf, sb->len + extra + 1, sb->alloc);
	if (new_buf)
		sb->buf[0] = '\0';
}