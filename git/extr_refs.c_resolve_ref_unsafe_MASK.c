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
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char const* FUNC1 (int /*<<< orphan*/ ,char const*,int,struct object_id*,int*) ; 
 int /*<<< orphan*/  the_repository ; 

const char *FUNC2(const char *refname, int resolve_flags,
			       struct object_id *oid, int *flags)
{
	return FUNC1(FUNC0(the_repository), refname,
				       resolve_flags, oid, flags);
}