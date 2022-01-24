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
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*) ; 

void FUNC2(struct strbuf *sb, const char *src)
{
	char c;

	FUNC0(sb, '"');
	while ((c = *src++)) {
		switch (c) {
		case '[': case ']':
		case '{': case '}':
		case '$': case '\\': case '"':
			FUNC0(sb, '\\');
			/* fallthrough */
		default:
			FUNC0(sb, c);
			break;
		case '\f':
			FUNC1(sb, "\\f");
			break;
		case '\r':
			FUNC1(sb, "\\r");
			break;
		case '\n':
			FUNC1(sb, "\\n");
			break;
		case '\t':
			FUNC1(sb, "\\t");
			break;
		case '\v':
			FUNC1(sb, "\\v");
			break;
		}
	}
	FUNC0(sb, '"');
}