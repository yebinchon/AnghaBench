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
typedef  scalar_t__ timestamp_t ;
struct recent_data {scalar_t__ timestamp; int /*<<< orphan*/  revs; } ;
struct object_id {int dummy; } ;
struct object {int dummy; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
#define  OBJ_BLOB 131 
#define  OBJ_COMMIT 130 
#define  OBJ_TAG 129 
#define  OBJ_TREE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct object*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct object_id const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct object_id const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct object_id const*) ; 
 struct object* FUNC6 (struct object_id const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(const struct object_id *oid,
			      timestamp_t mtime,
			      struct recent_data *data)
{
	struct object *obj;
	enum object_type type;

	if (mtime <= data->timestamp)
		return;

	/*
	 * We do not want to call parse_object here, because
	 * inflating blobs and trees could be very expensive.
	 * However, we do need to know the correct type for
	 * later processing, and the revision machinery expects
	 * commits and tags to have been parsed.
	 */
	type = FUNC4(the_repository, oid, NULL);
	if (type < 0)
		FUNC1("unable to get object info for %s", FUNC5(oid));

	switch (type) {
	case OBJ_TAG:
	case OBJ_COMMIT:
		obj = FUNC6(oid, NULL);
		break;
	case OBJ_TREE:
		obj = (struct object *)FUNC3(the_repository, oid);
		break;
	case OBJ_BLOB:
		obj = (struct object *)FUNC2(the_repository, oid);
		break;
	default:
		FUNC1("unknown object type for %s: %s",
		    FUNC5(oid), FUNC7(type));
	}

	if (!obj)
		FUNC1("unable to lookup %s", FUNC5(oid));

	FUNC0(data->revs, obj, "");
}