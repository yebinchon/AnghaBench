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
struct string_list {int dummy; } ;
struct object_id {int dummy; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int OBJ_BLOB ; 
 int FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*,char*,char**) ; 
 char* FUNC4 (struct object_id*,int*,unsigned long*) ; 

__attribute__((used)) static int FUNC5(struct string_list *map,
			     const char *name,
			     char **repo_abbrev)
{
	struct object_id oid;
	char *buf;
	unsigned long size;
	enum object_type type;

	if (!name)
		return 0;
	if (FUNC2(name, &oid) < 0)
		return 0;

	buf = FUNC4(&oid, &type, &size);
	if (!buf)
		return FUNC0("unable to read mailmap object at %s", name);
	if (type != OBJ_BLOB)
		return FUNC0("mailmap is not a blob: %s", name);

	FUNC3(map, buf, repo_abbrev);

	FUNC1(buf);
	return 0;
}