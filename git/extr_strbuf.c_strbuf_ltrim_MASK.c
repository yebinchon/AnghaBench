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
struct strbuf {char* buf; size_t len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 

void FUNC2(struct strbuf *sb)
{
	char *b = sb->buf;
	while (sb->len > 0 && FUNC0(*b)) {
		b++;
		sb->len--;
	}
	FUNC1(sb->buf, b, sb->len);
	sb->buf[sb->len] = '\0';
}