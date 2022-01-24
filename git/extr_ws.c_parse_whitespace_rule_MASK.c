#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const* rule_name; unsigned int rule_bits; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 unsigned int WS_DEFAULT_RULE ; 
 unsigned int WS_INDENT_WITH_NON_TAB ; 
 unsigned int WS_TAB_IN_INDENT ; 
 unsigned int WS_TAB_WIDTH_MASK ; 
 unsigned int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,char) ; 
 scalar_t__ FUNC4 (char const*,char const*,int) ; 
 int FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char const*) ; 
 TYPE_1__* whitespace_rule_names ; 

unsigned FUNC7(const char *string)
{
	unsigned rule = WS_DEFAULT_RULE;

	while (string) {
		int i;
		size_t len;
		const char *ep;
		int negated = 0;

		string = string + FUNC5(string, ", \t\n\r");
		ep = FUNC3(string, ',');
		len = ep - string;

		if (*string == '-') {
			negated = 1;
			string++;
			len--;
		}
		if (!len)
			break;
		for (i = 0; i < FUNC0(whitespace_rule_names); i++) {
			if (FUNC4(whitespace_rule_names[i].rule_name,
				    string, len))
				continue;
			if (negated)
				rule &= ~whitespace_rule_names[i].rule_bits;
			else
				rule |= whitespace_rule_names[i].rule_bits;
			break;
		}
		if (FUNC4(string, "tabwidth=", 9) == 0) {
			unsigned tabwidth = FUNC1(string + 9);
			if (0 < tabwidth && tabwidth < 0100) {
				rule &= ~WS_TAB_WIDTH_MASK;
				rule |= tabwidth;
			}
			else
				FUNC6("tabwidth %.*s out of range",
					(int)(len - 9), string + 9);
		}
		string = ep;
	}

	if (rule & WS_TAB_IN_INDENT && rule & WS_INDENT_WITH_NON_TAB)
		FUNC2("cannot enforce both tab-in-indent and indent-with-non-tab");
	return rule;
}