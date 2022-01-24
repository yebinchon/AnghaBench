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
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
 int OBJ_TAG ; 
 int FUNC0 (char*,char const*,...) ; 
 char const* FUNC1 (struct object_id const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct object_id const*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (struct object_id const*,int*,unsigned long*) ; 
 int FUNC5 (char*,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  the_repository ; 
 char* FUNC6 (int) ; 

int FUNC7(const struct object_id *oid, const char *name_to_report,
		unsigned flags)
{
	enum object_type type;
	char *buf;
	unsigned long size;
	int ret;

	type = FUNC3(the_repository, oid, NULL);
	if (type != OBJ_TAG)
		return FUNC0("%s: cannot verify a non-tag object of type %s.",
				name_to_report ?
				name_to_report :
				FUNC1(oid, DEFAULT_ABBREV),
				FUNC6(type));

	buf = FUNC4(oid, &type, &size);
	if (!buf)
		return FUNC0("%s: unable to read file.",
				name_to_report ?
				name_to_report :
				FUNC1(oid, DEFAULT_ABBREV));

	ret = FUNC5(buf, size, flags);

	FUNC2(buf);
	return ret;
}