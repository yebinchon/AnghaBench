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
struct strbuf {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (char const*,char,int) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 

__attribute__((used)) static int FUNC3(const char *name, int namelen, int len, struct strbuf *buf)
{
	const char *next;

	if (len || name[1] == '{')
		return -1;

	/* make sure it's a single @, or @@{.*}, not @foo */
	next = FUNC0(name + len + 1, '@', namelen - len - 1);
	if (next && next[1] != '{')
		return -1;
	if (!next)
		next = name + namelen;
	if (next != name + 1)
		return -1;

	FUNC2(buf);
	FUNC1(buf, "HEAD", 4);
	return 1;
}