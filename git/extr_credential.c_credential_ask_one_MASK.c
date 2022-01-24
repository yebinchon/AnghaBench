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
struct strbuf {int /*<<< orphan*/  buf; scalar_t__ len; } ;
struct credential {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct credential*,struct strbuf*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 char* FUNC4 (char*) ; 

__attribute__((used)) static char *FUNC5(const char *what, struct credential *c,
				int flags)
{
	struct strbuf desc = STRBUF_INIT;
	struct strbuf prompt = STRBUF_INIT;
	char *r;

	FUNC0(c, &desc);
	if (desc.len)
		FUNC2(&prompt, "%s for '%s': ", what, desc.buf);
	else
		FUNC2(&prompt, "%s: ", what);

	r = FUNC1(prompt.buf, flags);

	FUNC3(&desc);
	FUNC3(&prompt);
	return FUNC4(r);
}