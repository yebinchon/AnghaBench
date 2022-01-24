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
struct add_alternate_refs_data {int /*<<< orphan*/  revs; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  REV_CMD_REV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct object*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct object*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct object* FUNC2 (int /*<<< orphan*/ ,char const*,struct object_id const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const struct object_id *oid,
				  void *vdata)
{
	const char *name = ".alternate";
	struct add_alternate_refs_data *data = vdata;
	struct object *obj;

	obj = FUNC2(data->revs, name, oid, data->flags);
	FUNC1(data->revs, obj, name, REV_CMD_REV, data->flags);
	FUNC0(data->revs, obj, name);
}