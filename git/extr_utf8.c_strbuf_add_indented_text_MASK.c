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
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char,int) ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static void FUNC3(struct strbuf *buf, const char *text,
				     int indent, int indent2)
{
	if (indent < 0)
		indent = 0;
	while (*text) {
		const char *eol = FUNC2(text, '\n');
		if (*eol == '\n')
			eol++;
		FUNC1(buf, ' ', indent);
		FUNC0(buf, text, eol - text);
		text = eol;
		indent = indent2;
	}
}