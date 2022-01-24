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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct credential {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (char const*) ; 
 int FUNC1 (struct credential*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(struct credential *c, const char *helper,
			 const char *operation)
{
	struct strbuf cmd = STRBUF_INIT;
	int r;

	if (helper[0] == '!')
		FUNC3(&cmd, helper + 1);
	else if (FUNC0(helper))
		FUNC3(&cmd, helper);
	else
		FUNC2(&cmd, "git credential-%s", helper);

	FUNC2(&cmd, " %s", operation);
	r = FUNC1(c, cmd.buf, !FUNC5(operation, "get"));

	FUNC4(&cmd);
	return r;
}