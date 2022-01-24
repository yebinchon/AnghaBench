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
struct oidset_iter {int dummy; } ;
struct object_id {int dummy; } ;
struct object {int /*<<< orphan*/  oid; } ;
struct fsck_options {int dummy; } ;
struct blob {struct object object; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int /*<<< orphan*/  FSCK_MSG_GITMODULES_BLOB ; 
 int /*<<< orphan*/  FSCK_MSG_GITMODULES_MISSING ; 
 int OBJ_BLOB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct blob*,char*,unsigned long,struct fsck_options*) ; 
 int /*<<< orphan*/  gitmodules_done ; 
 int /*<<< orphan*/  gitmodules_found ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct blob* FUNC3 (int /*<<< orphan*/ ,struct object_id const*) ; 
 struct object* FUNC4 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct oidset_iter*) ; 
 struct object_id* FUNC8 (struct oidset_iter*) ; 
 char* FUNC9 (struct object_id const*,int*,unsigned long*) ; 
 int FUNC10 (struct fsck_options*,struct object*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  the_repository ; 

int FUNC11(struct fsck_options *options)
{
	int ret = 0;
	struct oidset_iter iter;
	const struct object_id *oid;

	FUNC7(&gitmodules_found, &iter);
	while ((oid = FUNC8(&iter))) {
		struct blob *blob;
		enum object_type type;
		unsigned long size;
		char *buf;

		if (FUNC6(&gitmodules_done, oid))
			continue;

		blob = FUNC3(the_repository, oid);
		if (!blob) {
			struct object *obj = FUNC4(oid);
			ret |= FUNC10(options, obj,
				      FSCK_MSG_GITMODULES_BLOB,
				      "non-blob found at .gitmodules");
			continue;
		}

		buf = FUNC9(oid, &type, &size);
		if (!buf) {
			if (FUNC2(&blob->object.oid))
				continue;
			ret |= FUNC10(options, &blob->object,
				      FSCK_MSG_GITMODULES_MISSING,
				      "unable to read .gitmodules blob");
			continue;
		}

		if (type == OBJ_BLOB)
			ret |= FUNC1(blob, buf, size, options);
		else
			ret |= FUNC10(options, &blob->object,
				      FSCK_MSG_GITMODULES_BLOB,
				      "non-blob found at .gitmodules");
		FUNC0(buf);
	}


	FUNC5(&gitmodules_found);
	FUNC5(&gitmodules_done);
	return ret;
}