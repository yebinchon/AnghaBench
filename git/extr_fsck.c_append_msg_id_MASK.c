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
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 

__attribute__((used)) static void FUNC4(struct strbuf *sb, const char *msg_id)
{
	for (;;) {
		char c = *(msg_id)++;

		if (!c)
			break;
		if (c != '_')
			FUNC1(sb, FUNC3(c));
		else {
			FUNC0(*msg_id);
			FUNC1(sb, *(msg_id)++);
		}
	}

	FUNC2(sb, ": ");
}