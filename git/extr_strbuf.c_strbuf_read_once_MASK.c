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
struct strbuf {size_t alloc; size_t len; scalar_t__ buf; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,scalar_t__) ; 
 scalar_t__ FUNC3 (int,scalar_t__,size_t) ; 

ssize_t FUNC4(struct strbuf *sb, int fd, size_t hint)
{
	size_t oldalloc = sb->alloc;
	ssize_t cnt;

	FUNC0(sb, hint ? hint : 8192);
	cnt = FUNC3(fd, sb->buf + sb->len, sb->alloc - sb->len - 1);
	if (cnt > 0)
		FUNC2(sb, sb->len + cnt);
	else if (oldalloc == 0)
		FUNC1(sb);
	return cnt;
}