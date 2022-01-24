#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char const* path; } ;
struct tree_desc {TYPE_1__ entry; scalar_t__ size; } ;
struct object_id {unsigned char* hash; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (struct tree_desc*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct object_id const*) ; 
 char* FUNC7 (struct object_id const*,int*,unsigned long*) ; 
 char* FUNC8 (char const*,char) ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct tree_desc*,char const**,unsigned short*) ; 
 int /*<<< orphan*/  tree_type ; 
 int /*<<< orphan*/  FUNC11 (struct tree_desc*) ; 
 int FUNC12 (char*,unsigned long,int /*<<< orphan*/ ,struct object_id*) ; 

__attribute__((used)) static int FUNC13(const struct object_id *oid1, const char *prefix,
		       const struct object_id *oid2, struct object_id *result)
{
	char *subpath;
	int toplen;
	char *buf;
	unsigned long sz;
	struct tree_desc desc;
	unsigned char *rewrite_here;
	const struct object_id *rewrite_with;
	struct object_id subtree;
	enum object_type type;
	int status;

	subpath = FUNC8(prefix, '/');
	toplen = subpath - prefix;
	if (*subpath)
		subpath++;

	buf = FUNC7(oid1, &type, &sz);
	if (!buf)
		FUNC1("cannot read tree %s", FUNC6(oid1));
	FUNC4(&desc, buf, sz);

	rewrite_here = NULL;
	while (desc.size) {
		const char *name;
		unsigned short mode;

		FUNC10(&desc, &name, &mode);
		if (FUNC9(name) == toplen &&
		    !FUNC5(name, prefix, toplen)) {
			if (!FUNC0(mode))
				FUNC1("entry %s in tree %s is not a tree", name,
				    FUNC6(oid1));

			/*
			 * We cast here for two reasons:
			 *
			 *   - to flip the "char *" (for the path) to "unsigned
			 *     char *" (for the hash stored after it)
			 *
			 *   - to discard the "const"; this is OK because we
			 *     know it points into our non-const "buf"
			 */
			rewrite_here = (unsigned char *)(desc.entry.path +
							 FUNC9(desc.entry.path) +
							 1);
			break;
		}
		FUNC11(&desc);
	}
	if (!rewrite_here)
		FUNC1("entry %.*s not found in tree %s", toplen, prefix,
		    FUNC6(oid1));
	if (*subpath) {
		struct object_id tree_oid;
		FUNC3(tree_oid.hash, rewrite_here);
		status = FUNC13(&tree_oid, subpath, oid2, &subtree);
		if (status)
			return status;
		rewrite_with = &subtree;
	} else {
		rewrite_with = oid2;
	}
	FUNC3(rewrite_here, rewrite_with->hash);
	status = FUNC12(buf, sz, tree_type, result);
	FUNC2(buf);
	return status;
}