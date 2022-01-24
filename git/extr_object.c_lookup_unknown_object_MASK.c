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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct object* FUNC1 (int /*<<< orphan*/ ,struct object_id const*,int /*<<< orphan*/ ) ; 
 struct object* FUNC2 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  the_repository ; 

struct object *FUNC3(const struct object_id *oid)
{
	struct object *obj = FUNC2(the_repository, oid);
	if (!obj)
		obj = FUNC1(the_repository, oid,
				    FUNC0(the_repository));
	return obj;
}