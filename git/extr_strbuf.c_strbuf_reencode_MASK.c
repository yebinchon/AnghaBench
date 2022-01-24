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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*,size_t*) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,size_t,size_t) ; 

int FUNC3(struct strbuf *sb, const char *from, const char *to)
{
	char *out;
	size_t len;

	if (FUNC1(from, to))
		return 0;

	out = FUNC0(sb->buf, sb->len, to, from, &len);
	if (!out)
		return -1;

	FUNC2(sb, out, len, len);
	return 0;
}