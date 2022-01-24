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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const**,char const**,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  mailmap ; 

void FUNC3(void)
{
	const char *name;
	const char *email;
	FUNC1(FUNC2(
		&name, &email, mailmap, "Other Name", "yetanotheremail@foo.com"));

	FUNC0(name, "Other Name");
	FUNC0(email, "email@foo.com");

	FUNC1(FUNC2(
		&name, &email, mailmap,
		"Other Name That Doesn't Match", "yetanotheremail@foo.com"));
	FUNC0(name, "Other Name That Doesn't Match");
	FUNC0(email, "yetanotheremail@foo.com");
}