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
struct string_list {int dummy; } ;
struct strbuf {char* buf; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (char*,char const**) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 char* FUNC3 (char const*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct string_list*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct string_list*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct string_list*) ; 

void FUNC8(struct string_list *list)
{
	const char *cmd_list;

	if (FUNC0("completion.commands", &cmd_list))
		return;

	FUNC7(list);
	FUNC6(list, 0);

	while (*cmd_list) {
		struct strbuf sb = STRBUF_INIT;
		const char *p = FUNC3(cmd_list, ' ');

		FUNC1(&sb, cmd_list, p - cmd_list);
		if (sb.buf[0] == '-')
			FUNC5(list, sb.buf + 1, 0);
		else
			FUNC4(list, sb.buf);
		FUNC2(&sb);
		while (*p == ' ')
			p++;
		cmd_list = p;
	}
}