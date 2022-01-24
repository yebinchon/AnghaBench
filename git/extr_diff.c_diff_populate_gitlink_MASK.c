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
struct strbuf {int /*<<< orphan*/  len; } ;
struct diff_filespec {int should_free; int /*<<< orphan*/ * data; int /*<<< orphan*/  size; int /*<<< orphan*/  oid; scalar_t__ dirty_submodule; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 

__attribute__((used)) static int FUNC4(struct diff_filespec *s, int size_only)
{
	struct strbuf buf = STRBUF_INIT;
	char *dirty = "";

	/* Are we looking at the work tree? */
	if (s->dirty_submodule)
		dirty = "-dirty";

	FUNC1(&buf, "Subproject commit %s%s\n",
		    FUNC0(&s->oid), dirty);
	s->size = buf.len;
	if (size_only) {
		s->data = NULL;
		FUNC3(&buf);
	} else {
		s->data = FUNC2(&buf, NULL);
		s->should_free = 1;
	}
	return 0;
}