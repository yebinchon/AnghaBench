#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct ref_array_item {int /*<<< orphan*/  value; int /*<<< orphan*/  refname; } ;
struct object {int dummy; } ;
struct TYPE_2__ {scalar_t__ contentp; scalar_t__ disk_sizep; int /*<<< orphan*/ * typep; int /*<<< orphan*/ * sizep; } ;
struct expand_data {scalar_t__ disk_size; int /*<<< orphan*/  content; int /*<<< orphan*/  oid; int /*<<< orphan*/  size; int /*<<< orphan*/  type; TYPE_1__ info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  OBJECT_INFO_LOOKUP_REPLACE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,struct expand_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,struct object*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct object* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC8 (struct strbuf*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC9(struct ref_array_item *ref, int deref, struct object **obj,
		      struct expand_data *oi, struct strbuf *err)
{
	/* parse_object_buffer() will set eaten to 0 if free() will be needed */
	int eaten = 1;
	if (oi->info.contentp) {
		/* We need to know that to use parse_object_buffer properly */
		oi->info.sizep = &oi->size;
		oi->info.typep = &oi->type;
	}
	if (FUNC5(the_repository, &oi->oid, &oi->info,
				     OBJECT_INFO_LOOKUP_REPLACE))
		return FUNC8(err, -1, FUNC1("missing object %s for %s"),
				       FUNC6(&oi->oid), ref->refname);
	if (oi->info.disk_sizep && oi->disk_size < 0)
		FUNC0("Object size is less than zero.");

	if (oi->info.contentp) {
		*obj = FUNC7(the_repository, &oi->oid, oi->type, oi->size, oi->content, &eaten);
		if (!obj) {
			if (!eaten)
				FUNC2(oi->content);
			return FUNC8(err, -1, FUNC1("parse_object_buffer failed on %s for %s"),
					       FUNC6(&oi->oid), ref->refname);
		}
		FUNC4(ref->value, deref, *obj, oi->content);
	}

	FUNC3(ref->value, deref, oi);
	if (!eaten)
		FUNC2(oi->content);
	return 0;
}