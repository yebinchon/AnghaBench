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
struct ref {int dummy; } ;

/* Variables and functions */
 struct ref* FUNC0 (char const*) ; 
 struct ref* FUNC1 (char*,int,char const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static struct ref *FUNC3(const char *name)
{
	if (!name || name[0] == '\0')
		return NULL;

	if (FUNC2(name, "refs/"))
		return FUNC0(name);

	if (FUNC2(name, "heads/") ||
	    FUNC2(name, "tags/") ||
	    FUNC2(name, "remotes/"))
		return FUNC1("refs/", 5, name);

	return FUNC1("refs/heads/", 11, name);
}