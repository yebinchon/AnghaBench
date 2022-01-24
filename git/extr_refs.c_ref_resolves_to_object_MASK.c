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
 unsigned int REF_ISBROKEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id const*) ; 

int FUNC3(const char *refname,
			   const struct object_id *oid,
			   unsigned int flags)
{
	if (flags & REF_ISBROKEN)
		return 0;
	if (!FUNC2(oid)) {
		FUNC1(FUNC0("%s does not point to a valid object!"), refname);
		return 0;
	}
	return 1;
}