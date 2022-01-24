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
struct tree_desc {int dummy; } ;
struct object_id {int dummy; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int OBJ_TREE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tree_desc*,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id const*) ; 
 void* FUNC3 (struct object_id const*,int*,unsigned long*) ; 

__attribute__((used)) static void *FUNC4(struct tree_desc *desc,
				   const struct object_id *hash)
{
	void *buffer;
	enum object_type type;
	unsigned long size;

	buffer = FUNC3(hash, &type, &size);
	if (!buffer)
		FUNC0("unable to read tree (%s)", FUNC2(hash));
	if (type != OBJ_TREE)
		FUNC0("%s is not a tree", FUNC2(hash));
	FUNC1(desc, buffer, size);
	return buffer;
}