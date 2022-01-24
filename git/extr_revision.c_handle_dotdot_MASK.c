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
struct rev_info {int dummy; } ;
struct object_context {int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  b_oc ;
typedef  int /*<<< orphan*/  a_oc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,char*,struct rev_info*,int,int,struct object_context*,struct object_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct object_context*,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(const char *arg,
			 struct rev_info *revs, int flags,
			 int cant_be_filename)
{
	struct object_context a_oc, b_oc;
	char *dotdot = FUNC3(arg, "..");
	int ret;

	if (!dotdot)
		return -1;

	FUNC2(&a_oc, 0, sizeof(a_oc));
	FUNC2(&b_oc, 0, sizeof(b_oc));

	*dotdot = '\0';
	ret = FUNC1(arg, dotdot, revs, flags, cant_be_filename,
			      &a_oc, &b_oc);
	*dotdot = '.';

	FUNC0(a_oc.path);
	FUNC0(b_oc.path);

	return ret;
}