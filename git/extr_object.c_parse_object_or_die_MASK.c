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
struct object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 char const* FUNC2 (struct object_id const*) ; 
 struct object* FUNC3 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  the_repository ; 

struct object *FUNC4(const struct object_id *oid,
				   const char *name)
{
	struct object *o = FUNC3(the_repository, oid);
	if (o)
		return o;

	FUNC1(FUNC0("unable to parse object: %s"), name ? name : FUNC2(oid));
}