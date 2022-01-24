#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct packref {char* name; int /*<<< orphan*/  flags; int /*<<< orphan*/  peel; int /*<<< orphan*/  oid; } ;
struct TYPE_7__ {scalar_t__ peeling_mode; int /*<<< orphan*/  refcache; int /*<<< orphan*/  gitpath; } ;
typedef  TYPE_1__ refdb_fs_backend ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_8__ {int size; scalar_t__ ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_REFERENCE ; 
 scalar_t__ GIT_OID_HEXSZ ; 
 char const* GIT_REFS_TAGS_DIR ; 
 int /*<<< orphan*/  PACKREF_CANNOT_PEEL ; 
 int /*<<< orphan*/  PACKREF_HAS_PEEL ; 
 scalar_t__ PEELING_FULL ; 
 scalar_t__ PEELING_NONE ; 
 scalar_t__ PEELING_STANDARD ; 
 scalar_t__ FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC8 (void**,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (char*,char) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int /*<<< orphan*/ * FUNC12 (char*,char*) ; 

__attribute__((used)) static int FUNC13(refdb_fs_backend *backend)
{
	int error;
	git_buf packedrefs = GIT_BUF_INIT;
	char *scan, *eof, *eol;

	if (!backend->gitpath)
		return 0;

	error = FUNC7(backend->refcache, &packedrefs);

	/*
	 * If we can't find the packed-refs, clear table and return.
	 * Any other error just gets passed through.
	 * If no error, and file wasn't changed, just return.
	 * Anything else means we need to refresh the packed refs.
	 */
	if (error <= 0) {
		if (error == GIT_ENOTFOUND) {
			FUNC6(backend->refcache, true);
			FUNC2();
			error = 0;
		}
		return error;
	}

	/* At this point, refresh the packed refs from the loaded buffer. */

	FUNC6(backend->refcache, false);

	scan = (char *)packedrefs.ptr;
	eof  = scan + packedrefs.size;

	backend->peeling_mode = PEELING_NONE;

	if (*scan == '#') {
		static const char *traits_header = "# pack-refs with: ";

		if (FUNC0(scan, traits_header) == 0) {
			scan += FUNC11(traits_header);
			eol = FUNC10(scan, '\n');

			if (!eol)
				goto parse_failed;
			*eol = '\0';

			if (FUNC12(scan, " fully-peeled ") != NULL) {
				backend->peeling_mode = PEELING_FULL;
			} else if (FUNC12(scan, " peeled ") != NULL) {
				backend->peeling_mode = PEELING_STANDARD;
			}

			scan = eol + 1;
		}
	}

	while (scan < eof && *scan == '#') {
		if (!(eol = FUNC10(scan, '\n')))
			goto parse_failed;
		scan = eol + 1;
	}

	while (scan < eof) {
		struct packref *ref;
		git_oid oid;

		/* parse "<OID> <refname>\n" */

		if (FUNC5(&oid, scan) < 0)
			goto parse_failed;
		scan += GIT_OID_HEXSZ;

		if (*scan++ != ' ')
			goto parse_failed;
		if (!(eol = FUNC10(scan, '\n')))
			goto parse_failed;
		*eol = '\0';
		if (eol[-1] == '\r')
			eol[-1] = '\0';

		if (FUNC8((void **)&ref, backend->refcache, scan) < 0)
			goto parse_failed;
		scan = eol + 1;

		FUNC4(&ref->oid, &oid);

		/* look for optional "^<OID>\n" */

		if (*scan == '^') {
			if (FUNC5(&oid, scan + 1) < 0)
				goto parse_failed;
			scan += GIT_OID_HEXSZ + 1;

			if (scan < eof) {
				if (!(eol = FUNC10(scan, '\n')))
					goto parse_failed;
				scan = eol + 1;
			}

			FUNC4(&ref->peel, &oid);
			ref->flags |= PACKREF_HAS_PEEL;
		}
		else if (backend->peeling_mode == PEELING_FULL ||
				(backend->peeling_mode == PEELING_STANDARD &&
				 FUNC0(ref->name, GIT_REFS_TAGS_DIR) == 0))
			ref->flags |= PACKREF_CANNOT_PEEL;
	}

	FUNC9(backend->refcache);
	FUNC1(&packedrefs);

	return 0;

parse_failed:
	FUNC3(GIT_ERROR_REFERENCE, "corrupted packed references file");

	FUNC6(backend->refcache, false);
	FUNC9(backend->refcache);
	FUNC1(&packedrefs);

	return -1;
}