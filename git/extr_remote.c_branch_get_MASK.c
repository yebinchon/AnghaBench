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
struct branch {int dummy; } ;

/* Variables and functions */
 struct branch* current_branch ; 
 struct branch* FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct branch*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

struct branch *FUNC4(const char *name)
{
	struct branch *ret;

	FUNC1();
	if (!name || !*name || !FUNC3(name, "HEAD"))
		ret = current_branch;
	else
		ret = FUNC0(name, 0);
	FUNC2(ret);
	return ret;
}