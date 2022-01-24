#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct group {int /*<<< orphan*/  gr_gid; } ;
struct credentials {int /*<<< orphan*/  gid; TYPE_1__* pass; } ;
struct TYPE_2__ {int /*<<< orphan*/  pw_gid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 struct group* FUNC1 (char const*) ; 
 TYPE_1__* FUNC2 (char const*) ; 

__attribute__((used)) static struct credentials *FUNC3(const char *user_name,
    const char *group_name)
{
	static struct credentials c;

	c.pass = FUNC2(user_name);
	if (!c.pass)
		FUNC0("user not found - %s", user_name);

	if (!group_name)
		c.gid = c.pass->pw_gid;
	else {
		struct group *group = FUNC1(group_name);
		if (!group)
			FUNC0("group not found - %s", group_name);

		c.gid = group->gr_gid;
	}

	return &c;
}