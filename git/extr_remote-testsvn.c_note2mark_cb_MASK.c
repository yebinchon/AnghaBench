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
struct rev_note {int rev_nr; } ;
struct object_id {int dummy; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int OBJ_BLOB ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (struct object_id const*) ; 
 scalar_t__ FUNC3 (char*,struct rev_note*) ; 
 char* FUNC4 (struct object_id const*,int*,unsigned long*) ; 

__attribute__((used)) static int FUNC5(const struct object_id *object_oid,
		const struct object_id *note_oid, char *note_path,
		void *cb_data)
{
	FILE *file = (FILE *)cb_data;
	char *msg;
	unsigned long msglen;
	enum object_type type;
	struct rev_note note;

	if (!(msg = FUNC4(note_oid, &type, &msglen)) ||
			!msglen || type != OBJ_BLOB) {
		FUNC1(msg);
		return 1;
	}
	if (FUNC3(msg, &note))
		return 2;
	if (FUNC0(file, ":%d %s\n", note.rev_nr, FUNC2(object_oid)) < 1)
		return 3;
	return 0;
}