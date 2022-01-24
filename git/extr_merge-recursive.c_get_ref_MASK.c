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
struct tree {int dummy; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct object {scalar_t__ type; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 scalar_t__ OBJ_COMMIT ; 
 scalar_t__ OBJ_TREE ; 
 struct object* FUNC0 (struct repository*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 struct commit* FUNC1 (struct repository*,struct tree*,char const*) ; 
 scalar_t__ FUNC2 (struct commit*) ; 
 int /*<<< orphan*/  FUNC3 (struct repository*,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static struct commit *FUNC5(struct repository *repo,
			      const struct object_id *oid,
			      const char *name)
{
	struct object *object;

	object = FUNC0(repo, FUNC3(repo, oid),
			   name, FUNC4(name));
	if (!object)
		return NULL;
	if (object->type == OBJ_TREE)
		return FUNC1(repo, (struct tree*)object, name);
	if (object->type != OBJ_COMMIT)
		return NULL;
	if (FUNC2((struct commit *)object))
		return NULL;
	return (struct commit *)object;
}