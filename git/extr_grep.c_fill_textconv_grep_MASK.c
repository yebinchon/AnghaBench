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
struct userdiff_driver {int /*<<< orphan*/  textconv; } ;
struct repository {int dummy; } ;
struct grep_source {int type; char* buf; size_t size; int /*<<< orphan*/ * identifier; int /*<<< orphan*/  path; } ;
struct diff_filespec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  GREP_SOURCE_FILE 129 
#define  GREP_SOURCE_OID 128 
 struct diff_filespec* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct diff_filespec*,int /*<<< orphan*/ *,int,int) ; 
 size_t FUNC3 (struct repository*,struct userdiff_driver*,struct diff_filespec*,char**) ; 
 int /*<<< orphan*/  FUNC4 (struct diff_filespec*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct grep_source*) ; 
 int FUNC8 (struct grep_source*) ; 
 int /*<<< orphan*/  null_oid ; 

__attribute__((used)) static int FUNC9(struct repository *r,
			      struct userdiff_driver *driver,
			      struct grep_source *gs)
{
	struct diff_filespec *df;
	char *buf;
	size_t size;

	if (!driver || !driver->textconv)
		return FUNC8(gs);

	/*
	 * The textconv interface is intimately tied to diff_filespecs, so we
	 * have to pretend to be one. If we could unify the grep_source
	 * and diff_filespec structs, this mess could just go away.
	 */
	df = FUNC1(gs->path);
	switch (gs->type) {
	case GREP_SOURCE_OID:
		FUNC2(df, gs->identifier, 1, 0100644);
		break;
	case GREP_SOURCE_FILE:
		FUNC2(df, &null_oid, 0, 0100644);
		break;
	default:
		FUNC0("attempt to textconv something without a path?");
	}

	/*
	 * fill_textconv is not remotely thread-safe; it may load objects
	 * behind the scenes, and it modifies the global diff tempfile
	 * structure.
	 */
	FUNC5();
	size = FUNC3(r, driver, df, &buf);
	FUNC6();
	FUNC4(df);

	/*
	 * The normal fill_textconv usage by the diff machinery would just keep
	 * the textconv'd buf separate from the diff_filespec. But much of the
	 * grep code passes around a grep_source and assumes that its "buf"
	 * pointer is the beginning of the thing we are searching. So let's
	 * install our textconv'd version into the grep_source, taking care not
	 * to leak any existing buffer.
	 */
	FUNC7(gs);
	gs->buf = buf;
	gs->size = size;

	return 0;
}