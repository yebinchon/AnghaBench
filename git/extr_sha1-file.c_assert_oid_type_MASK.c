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
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct object_id const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id const*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(const struct object_id *oid, enum object_type expect)
{
	enum object_type type = FUNC2(the_repository, oid, NULL);
	if (type < 0)
		FUNC1(FUNC0("%s is not a valid object"), FUNC3(oid));
	if (type != expect)
		FUNC1(FUNC0("%s is not a valid '%s' object"), FUNC3(oid),
		    FUNC4(expect));
}