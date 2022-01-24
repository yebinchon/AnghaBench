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
struct object_id {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;
struct object_entry {scalar_t__ type; TYPE_1__ idx; } ;
struct TYPE_4__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 scalar_t__ OBJ_TREE ; 
 TYPE_2__ command_buf ; 
 struct object_entry* FUNC0 (struct object_entry*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct object_entry* FUNC2 (int /*<<< orphan*/ ) ; 
 struct object_entry* FUNC3 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (struct object_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const**) ; 
 scalar_t__ FUNC6 (char const*,struct object_id*,char const**) ; 

__attribute__((used)) static struct object_entry *FUNC7(const char **p)
{
	struct object_id oid;
	struct object_entry *e;

	if (**p == ':') {	/* <mark> */
		e = FUNC2(FUNC5(p));
		if (!e)
			FUNC1("Unknown mark: %s", command_buf.buf);
		FUNC4(&oid, &e->idx.oid);
	} else {	/* <sha1> */
		if (FUNC6(*p, &oid, p))
			FUNC1("Invalid dataref: %s", command_buf.buf);
		e = FUNC3(&oid);
		if (*(*p)++ != ' ')
			FUNC1("Missing space after tree-ish: %s", command_buf.buf);
	}

	while (!e || e->type != OBJ_TREE)
		e = FUNC0(e, &oid);
	return e;
}