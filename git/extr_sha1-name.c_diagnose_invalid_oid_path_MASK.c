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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct repository*,struct object_id const*,char*,struct object_id*,unsigned short*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,char const*,char const*) ; 

__attribute__((used)) static void FUNC5(struct repository *r,
				      const char *prefix,
				      const char *filename,
				      const struct object_id *tree_oid,
				      const char *object_name,
				      int object_name_len)
{
	struct object_id oid;
	unsigned short mode;

	if (!prefix)
		prefix = "";

	if (FUNC1(filename))
		FUNC0("Path '%s' exists on disk, but not in '%.*s'.",
		    filename, object_name_len, object_name);
	if (FUNC3(errno)) {
		char *fullname = FUNC4("%s%s", prefix, filename);

		if (!FUNC2(r, tree_oid, fullname, &oid, &mode)) {
			FUNC0("Path '%s' exists, but not '%s'.\n"
			    "Did you mean '%.*s:%s' aka '%.*s:./%s'?",
			    fullname,
			    filename,
			    object_name_len, object_name,
			    fullname,
			    object_name_len, object_name,
			    filename);
		}
		FUNC0("Path '%s' does not exist in '%.*s'",
		    filename, object_name_len, object_name);
	}
}