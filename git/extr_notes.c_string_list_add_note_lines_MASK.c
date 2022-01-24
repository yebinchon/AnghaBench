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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct object_id const*) ; 
 char* FUNC2 (struct object_id const*,int*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*,char*,char,int) ; 

__attribute__((used)) static int FUNC4(struct string_list *list,
				      const struct object_id *oid)
{
	char *data;
	unsigned long len;
	enum object_type t;

	if (FUNC1(oid))
		return 0;

	/* read_sha1_file NUL-terminates */
	data = FUNC2(oid, &t, &len);
	if (t != OBJ_BLOB || !data || !len) {
		FUNC0(data);
		return t != OBJ_BLOB || !data;
	}

	/*
	 * If the last line of the file is EOL-terminated, this will
	 * add an empty string to the list.  But it will be removed
	 * later, along with any empty strings that came from empty
	 * lines within the file.
	 */
	FUNC3(list, data, '\n', -1);
	FUNC0(data);
	return 0;
}