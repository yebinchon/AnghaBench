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
struct object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_TREE ; 
 struct object* FUNC0 (struct repository*,struct object_id const*) ; 
 scalar_t__ FUNC1 (struct repository*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct object*,int /*<<< orphan*/ ) ; 
 struct repository* the_repository ; 

struct tree *FUNC2(const struct object_id *oid)
{
	struct repository *r = the_repository;
	struct object *obj = FUNC0(r, oid);
	return (struct tree *)FUNC1(r, NULL, 0, obj, OBJ_TREE);
}