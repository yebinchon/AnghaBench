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
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*) ; 
 size_t FUNC2 (char const*,char*) ; 

void FUNC3(struct strbuf *buf, const char *s)
{
	while (*s) {
		size_t len = FUNC2(s, "\"<>&");
		FUNC0(buf, s, len);
		s += len;
		switch (*s) {
		case '"':
			FUNC1(buf, "&quot;");
			break;
		case '<':
			FUNC1(buf, "&lt;");
			break;
		case '>':
			FUNC1(buf, "&gt;");
			break;
		case '&':
			FUNC1(buf, "&amp;");
			break;
		case 0:
			return;
		}
		s++;
	}
}