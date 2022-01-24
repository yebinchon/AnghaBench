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
struct strbuf {size_t len; char* buf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,size_t,size_t) ; 

__attribute__((used)) static void FUNC2(struct strbuf *sb)
{
	size_t pos, cnt;
	for (pos = 0; pos < sb->len; pos++) {
		if (FUNC0(sb->buf[pos])) {
			sb->buf[pos] = ' ';
			for (cnt = 0; FUNC0(sb->buf[pos + cnt + 1]); cnt++);
			FUNC1(sb, pos + 1, cnt);
		}
	}
}