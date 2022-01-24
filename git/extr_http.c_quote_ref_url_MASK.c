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
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,int) ; 
 char* FUNC4 (struct strbuf*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC5(const char *base, const char *ref)
{
	struct strbuf buf = STRBUF_INIT;
	const char *cp;
	int ch;

	FUNC0(&buf, base);

	for (cp = ref; (ch = *cp) != 0; cp++)
		if (FUNC1(ch))
			FUNC3(&buf, "%%%02x", ch);
		else
			FUNC2(&buf, *cp);

	return FUNC4(&buf, NULL);
}