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
struct object {scalar_t__ type; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int COMMON ; 
 int COMMON_REF ; 
 scalar_t__ OBJ_COMMIT ; 
 int POPPED ; 
 int SEEN ; 
 int /*<<< orphan*/  FUNC0 (struct commit*,int) ; 
 struct object* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC3(const char *refname, const struct object_id *oid,
		       int flag, void *cb_data)
{
	struct object *o = FUNC1(the_repository, FUNC2(the_repository, oid), refname, 0);

	if (o && o->type == OBJ_COMMIT)
		FUNC0((struct commit *)o,
				   COMMON | COMMON_REF | SEEN | POPPED);
	return 0;
}