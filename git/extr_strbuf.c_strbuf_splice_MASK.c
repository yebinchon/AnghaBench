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
struct strbuf {size_t len; scalar_t__ buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,size_t) ; 
 scalar_t__ FUNC5 (size_t,size_t) ; 

void FUNC6(struct strbuf *sb, size_t pos, size_t len,
				   const void *data, size_t dlen)
{
	if (FUNC5(pos, len))
		FUNC0("you want to use way too much memory");
	if (pos > sb->len)
		FUNC0("`pos' is too far after the end of the buffer");
	if (pos + len > sb->len)
		FUNC0("`pos + len' is too far after the end of the buffer");

	if (dlen >= len)
		FUNC3(sb, dlen - len);
	FUNC2(sb->buf + pos + dlen,
			sb->buf + pos + len,
			sb->len - pos - len);
	FUNC1(sb->buf + pos, data, dlen);
	FUNC4(sb, sb->len + dlen - len);
}