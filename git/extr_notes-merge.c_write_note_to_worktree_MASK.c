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
 int OBJ_BLOB ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id const*) ; 
 void* FUNC3 (struct object_id const*,int*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct object_id const*,void*,unsigned long) ; 

__attribute__((used)) static void FUNC5(const struct object_id *obj,
				   const struct object_id *note)
{
	enum object_type type;
	unsigned long size;
	void *buf = FUNC3(note, &type, &size);

	if (!buf)
		FUNC0("cannot read note %s for object %s",
		    FUNC2(note), FUNC2(obj));
	if (type != OBJ_BLOB)
		FUNC0("blob expected in note %s for object %s",
		    FUNC2(note), FUNC2(obj));
	FUNC4(obj, buf, size);
	FUNC1(buf);
}