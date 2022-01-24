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
struct discovery {scalar_t__ proto_git; } ;

/* Variables and functions */
 struct discovery* FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct discovery*) ; 
 int FUNC2 (int,char const**) ; 
 int FUNC3 (struct discovery*,int,char const**) ; 

__attribute__((used)) static int FUNC4(int nr_spec, const char **specs)
{
	struct discovery *heads = FUNC0("git-receive-pack", 1);
	int ret;

	if (heads->proto_git)
		ret = FUNC3(heads, nr_spec, specs);
	else
		ret = FUNC2(nr_spec, specs);
	FUNC1(heads);
	return ret;
}