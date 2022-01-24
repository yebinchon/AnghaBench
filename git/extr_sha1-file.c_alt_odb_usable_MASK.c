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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct raw_object_store {struct object_directory* odb; } ;
struct object_directory {char const* path; struct object_directory* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct raw_object_store *o,
			  struct strbuf *path,
			  const char *normalized_objdir)
{
	struct object_directory *odb;

	/* Detect cases where alternate disappeared */
	if (!FUNC3(path->buf)) {
		FUNC1(FUNC0("object directory %s does not exist; "
			"check .git/objects/info/alternates"),
		      path->buf);
		return 0;
	}

	/*
	 * Prevent the common mistake of listing the same
	 * thing twice, or object directory itself.
	 */
	for (odb = o->odb; odb; odb = odb->next) {
		if (!FUNC2(path->buf, odb->path))
			return 0;
	}
	if (!FUNC2(path->buf, normalized_objdir))
		return 0;

	return 1;
}