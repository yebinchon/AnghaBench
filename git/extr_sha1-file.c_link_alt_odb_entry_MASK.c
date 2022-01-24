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
struct strbuf {char* buf; int len; } ;
struct repository {TYPE_1__* objects; } ;
struct object_directory {struct object_directory* next; int /*<<< orphan*/  path; } ;
struct TYPE_2__ {struct object_directory** odb_tail; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct repository*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char const*) ; 
 scalar_t__ FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,int) ; 
 struct object_directory* FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static int FUNC13(struct repository *r, const char *entry,
	const char *relative_base, int depth, const char *normalized_objdir)
{
	struct object_directory *ent;
	struct strbuf pathbuf = STRBUF_INIT;

	if (!FUNC3(entry) && relative_base) {
		FUNC8(&pathbuf, relative_base, 1);
		FUNC5(&pathbuf, '/');
	}
	FUNC6(&pathbuf, entry);

	if (FUNC7(&pathbuf) < 0 && relative_base) {
		FUNC2(FUNC0("unable to normalize alternate object path: %s"),
		      pathbuf.buf);
		FUNC9(&pathbuf);
		return -1;
	}

	/*
	 * The trailing slash after the directory name is given by
	 * this function at the end. Remove duplicates.
	 */
	while (pathbuf.len && pathbuf.buf[pathbuf.len - 1] == '/')
		FUNC10(&pathbuf, pathbuf.len - 1);

	if (!FUNC1(r->objects, &pathbuf, normalized_objdir)) {
		FUNC9(&pathbuf);
		return -1;
	}

	ent = FUNC11(1, sizeof(*ent));
	ent->path = FUNC12(pathbuf.buf);

	/* add the alternate entry */
	*r->objects->odb_tail = ent;
	r->objects->odb_tail = &(ent->next);
	ent->next = NULL;

	/* recursively add alternates */
	FUNC4(r, pathbuf.buf, depth + 1);

	FUNC9(&pathbuf);
	return 0;
}