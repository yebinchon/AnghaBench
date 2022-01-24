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
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct object {scalar_t__ type; scalar_t__ parsed; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 scalar_t__ OBJ_BLOB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct object_id const*,void*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct repository*,struct object_id const*) ; 
 struct object* FUNC5 (struct repository*,struct object_id const*) ; 
 struct object_id* FUNC6 (struct repository*,struct object_id const*) ; 
 scalar_t__ FUNC7 (struct repository*,struct object_id const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct object* FUNC10 (struct repository*,struct object_id const*,int,unsigned long,void*,int*) ; 
 scalar_t__ FUNC11 (struct repository*,struct object_id const*) ; 
 void* FUNC12 (struct repository*,struct object_id const*,int*,unsigned long*) ; 
 int /*<<< orphan*/ * FUNC13 (int) ; 

struct object *FUNC14(struct repository *r, const struct object_id *oid)
{
	unsigned long size;
	enum object_type type;
	int eaten;
	const struct object_id *repl = FUNC6(r, oid);
	void *buffer;
	struct object *obj;

	obj = FUNC5(r, oid);
	if (obj && obj->parsed)
		return obj;

	if ((obj && obj->type == OBJ_BLOB && FUNC11(r, oid)) ||
	    (!obj && FUNC11(r, oid) &&
	     FUNC7(r, oid, NULL) == OBJ_BLOB)) {
		if (FUNC1(repl, NULL, 0, NULL) < 0) {
			FUNC2(FUNC0("hash mismatch %s"), FUNC8(oid));
			return NULL;
		}
		FUNC9(FUNC4(r, oid), NULL, 0);
		return FUNC5(r, oid);
	}

	buffer = FUNC12(r, oid, &type, &size);
	if (buffer) {
		if (FUNC1(repl, buffer, size, FUNC13(type)) < 0) {
			FUNC3(buffer);
			FUNC2(FUNC0("hash mismatch %s"), FUNC8(repl));
			return NULL;
		}

		obj = FUNC10(r, oid, type, size,
					  buffer, &eaten);
		if (!eaten)
			FUNC3(buffer);
		return obj;
	}
	return NULL;
}