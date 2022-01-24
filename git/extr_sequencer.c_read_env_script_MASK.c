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
struct argv_array {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct argv_array*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char**,char**,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct argv_array *env)
{
	char *name, *email, *date;

	if (FUNC2(FUNC3(),
			       &name, &email, &date, 0))
		return -1;

	FUNC0(env, "GIT_AUTHOR_NAME=%s", name);
	FUNC0(env, "GIT_AUTHOR_EMAIL=%s", email);
	FUNC0(env, "GIT_AUTHOR_DATE=%s", date);
	FUNC1(name);
	FUNC1(email);
	FUNC1(date);

	return 0;
}