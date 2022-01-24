#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ option; int /*<<< orphan*/  length; } ;
struct TYPE_4__ {TYPE_1__ objectname; } ;
struct used_atom {TYPE_2__ u; } ;
struct object_id {int dummy; } ;
struct atom_value {void* s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
 scalar_t__ O_FULL ; 
 scalar_t__ O_LENGTH ; 
 scalar_t__ O_SHORT ; 
 int /*<<< orphan*/  FUNC1 (struct object_id const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id const*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const char *name, const struct object_id *oid,
			   struct atom_value *v, struct used_atom *atom)
{
	if (FUNC3(name, "objectname")) {
		if (atom->u.objectname.option == O_SHORT) {
			v->s = FUNC4(FUNC1(oid, DEFAULT_ABBREV));
			return 1;
		} else if (atom->u.objectname.option == O_FULL) {
			v->s = FUNC4(FUNC2(oid));
			return 1;
		} else if (atom->u.objectname.option == O_LENGTH) {
			v->s = FUNC4(FUNC1(oid, atom->u.objectname.length));
			return 1;
		} else
			FUNC0("unknown %%(objectname) option");
	}
	return 0;
}