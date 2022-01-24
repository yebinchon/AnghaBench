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
struct strbuf {int dummy; } ;
struct object_id {int dummy; } ;
struct merge_options {int dummy; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int OBJ_BLOB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct merge_options*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id const*) ; 
 void* FUNC4 (struct object_id const*,int*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,void*,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct merge_options *opt,
			   const struct object_id *oid,
			   struct strbuf *dst)
{
	void *buf;
	enum object_type type;
	unsigned long size;
	buf = FUNC4(oid, &type, &size);
	if (!buf)
		return FUNC1(opt, FUNC0("cannot read object %s"), FUNC3(oid));
	if (type != OBJ_BLOB) {
		FUNC2(buf);
		return FUNC1(opt, FUNC0("object %s is not a blob"), FUNC3(oid));
	}
	FUNC5(dst, buf, size, size + 1);
	return 0;
}