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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int OBJ_BLOB ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct object_id* FUNC3 (int /*<<< orphan*/ *,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  notes_ref ; 
 char* FUNC5 (struct object_id const*,int*,unsigned long*) ; 

__attribute__((used)) static char *FUNC6(const struct object_id *oid)
{
	const struct object_id *note_oid;
	char *msg = NULL;
	unsigned long msglen;
	enum object_type type;

	FUNC4(NULL, notes_ref, NULL, 0);
	if (!(note_oid = FUNC3(NULL, oid)))
		return NULL;	/* note tree not found */
	if (!(msg = FUNC5(note_oid, &type, &msglen)))
		FUNC1("Empty notes tree. %s", notes_ref);
	else if (!msglen || type != OBJ_BLOB) {
		FUNC1("Note contains unusable content. "
			"Is something else using this notes tree? %s", notes_ref);
		FUNC0(msg);
	}
	FUNC2(NULL);
	return msg;
}