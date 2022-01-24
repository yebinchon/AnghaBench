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
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*) ; 

__attribute__((used)) static void FUNC3(struct strbuf *out, const char *in)
{
	unsigned char c;

	FUNC0(out, '"');
	while ((c = *in++) != '\0') {
		if (c == '"')
			FUNC2(out, "\\\"");
		else if (c == '\\')
			FUNC2(out, "\\\\");
		else if (c == '\n')
			FUNC2(out, "\\n");
		else if (c == '\r')
			FUNC2(out, "\\r");
		else if (c == '\t')
			FUNC2(out, "\\t");
		else if (c == '\f')
			FUNC2(out, "\\f");
		else if (c == '\b')
			FUNC2(out, "\\b");
		else if (c < 0x20)
			FUNC1(out, "\\u%04x", c);
		else
			FUNC0(out, c);
	}
	FUNC0(out, '"');
}