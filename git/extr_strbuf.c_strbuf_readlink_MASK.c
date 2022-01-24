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
struct strbuf {size_t alloc; int /*<<< orphan*/  buf; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 size_t STRBUF_MAXLINK ; 
 scalar_t__ errno ; 
 size_t FUNC0 (char const*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,size_t) ; 

int FUNC4(struct strbuf *sb, const char *path, size_t hint)
{
	size_t oldalloc = sb->alloc;

	if (hint < 32)
		hint = 32;

	while (hint < STRBUF_MAXLINK) {
		ssize_t len;

		FUNC1(sb, hint);
		len = FUNC0(path, sb->buf, hint);
		if (len < 0) {
			if (errno != ERANGE)
				break;
		} else if (len < hint) {
			FUNC3(sb, len);
			return 0;
		}

		/* .. the buffer was too small - try again */
		hint *= 2;
	}
	if (oldalloc == 0)
		FUNC2(sb);
	return -1;
}