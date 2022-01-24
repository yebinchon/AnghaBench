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
struct index_state {int dummy; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 unsigned int HASH_FORMAT_CHECK ; 
 unsigned int HASH_WRITE_OBJECT ; 
 int OBJ_BLOB ; 
 int OBJ_COMMIT ; 
 int OBJ_TAG ; 
 int OBJ_TREE ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,size_t) ; 
 scalar_t__ FUNC3 (struct index_state*,char const*,void*,size_t,struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int FUNC6 (void*,size_t,int /*<<< orphan*/ ,struct object_id*) ; 
 void* FUNC7 (struct strbuf*,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (void*,size_t,int /*<<< orphan*/ ,struct object_id*) ; 

__attribute__((used)) static int FUNC10(struct index_state *istate,
		     struct object_id *oid, void *buf, size_t size,
		     enum object_type type,
		     const char *path, unsigned flags)
{
	int ret, re_allocated = 0;
	int write_object = flags & HASH_WRITE_OBJECT;

	if (!type)
		type = OBJ_BLOB;

	/*
	 * Convert blobs to git internal format
	 */
	if ((type == OBJ_BLOB) && path) {
		struct strbuf nbuf = STRBUF_INIT;
		if (FUNC3(istate, path, buf, size, &nbuf,
				   FUNC5(flags))) {
			buf = FUNC7(&nbuf, &size);
			re_allocated = 1;
		}
	}
	if (flags & HASH_FORMAT_CHECK) {
		if (type == OBJ_TREE)
			FUNC2(buf, size);
		if (type == OBJ_COMMIT)
			FUNC0(buf, size);
		if (type == OBJ_TAG)
			FUNC1(buf, size);
	}

	if (write_object)
		ret = FUNC9(buf, size, FUNC8(type), oid);
	else
		ret = FUNC6(buf, size, FUNC8(type), oid);
	if (re_allocated)
		FUNC4(buf);
	return ret;
}