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
struct repository {int dummy; } ;
struct oid_array {int dummy; } ;
struct object_id {int dummy; } ;
struct disambiguate_state {int /*<<< orphan*/  hex_pfx; int /*<<< orphan*/ * fn; int /*<<< orphan*/  ambiguous; } ;
typedef  enum get_oid_result { ____Placeholder_get_oid_result } get_oid_result ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int GET_OID_BLOB ; 
 unsigned int GET_OID_COMMIT ; 
 unsigned int GET_OID_COMMITTISH ; 
 unsigned int GET_OID_DISAMBIGUATORS ; 
 unsigned int GET_OID_QUIETLY ; 
 unsigned int GET_OID_TREE ; 
 unsigned int GET_OID_TREEISH ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int MISSING_OBJECT ; 
 struct oid_array OID_ARRAY_INIT ; 
 int SHORT_NAME_AMBIGUOUS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  collect_ambiguous ; 
 int /*<<< orphan*/ * default_disambiguate_hint ; 
 int /*<<< orphan*/ * disambiguate_blob_only ; 
 int /*<<< orphan*/ * disambiguate_commit_only ; 
 int /*<<< orphan*/ * disambiguate_committish_only ; 
 int /*<<< orphan*/ * disambiguate_tree_only ; 
 int /*<<< orphan*/ * disambiguate_treeish_only ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct disambiguate_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct disambiguate_state*) ; 
 int FUNC7 (struct disambiguate_state*,struct object_id*) ; 
 scalar_t__ FUNC8 (struct repository*,char const*,int,struct disambiguate_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct oid_array*) ; 
 scalar_t__ FUNC10 (struct oid_array*,int /*<<< orphan*/ ,struct disambiguate_state*) ; 
 int /*<<< orphan*/  FUNC11 (struct repository*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct oid_array*) ; 
 int /*<<< orphan*/  FUNC12 (struct repository*) ; 
 int /*<<< orphan*/  show_ambiguous_object ; 
 int /*<<< orphan*/  FUNC13 (struct repository*,struct oid_array*) ; 

__attribute__((used)) static enum get_oid_result FUNC14(struct repository *r,
					 const char *name, int len,
					 struct object_id *oid,
					 unsigned flags)
{
	int status;
	struct disambiguate_state ds;
	int quietly = !!(flags & GET_OID_QUIETLY);

	if (FUNC8(r, name, len, &ds) < 0)
		return -1;

	if (FUNC1(flags & GET_OID_DISAMBIGUATORS))
		FUNC0("multiple get_short_oid disambiguator flags");

	if (flags & GET_OID_COMMIT)
		ds.fn = disambiguate_commit_only;
	else if (flags & GET_OID_COMMITTISH)
		ds.fn = disambiguate_committish_only;
	else if (flags & GET_OID_TREE)
		ds.fn = disambiguate_tree_only;
	else if (flags & GET_OID_TREEISH)
		ds.fn = disambiguate_treeish_only;
	else if (flags & GET_OID_BLOB)
		ds.fn = disambiguate_blob_only;
	else
		ds.fn = default_disambiguate_hint;

	FUNC5(&ds);
	FUNC6(&ds);
	status = FUNC7(&ds, oid);

	/*
	 * If we didn't find it, do the usual reprepare() slow-path,
	 * since the object may have recently been added to the repository
	 * or migrated from loose to packed.
	 */
	if (status == MISSING_OBJECT) {
		FUNC12(r);
		FUNC5(&ds);
		FUNC6(&ds);
		status = FUNC7(&ds, oid);
	}

	if (!quietly && (status == SHORT_NAME_AMBIGUOUS)) {
		struct oid_array collect = OID_ARRAY_INIT;

		FUNC4(FUNC2("short SHA1 %s is ambiguous"), ds.hex_pfx);

		/*
		 * We may still have ambiguity if we simply saw a series of
		 * candidates that did not satisfy our hint function. In
		 * that case, we still want to show them, so disable the hint
		 * function entirely.
		 */
		if (!ds.ambiguous)
			ds.fn = NULL;

		FUNC3(FUNC2("The candidates are:"));
		FUNC11(r, ds.hex_pfx, collect_ambiguous, &collect);
		FUNC13(r, &collect);

		if (FUNC10(&collect, show_ambiguous_object, &ds))
			FUNC0("show_ambiguous_object shouldn't return non-zero");
		FUNC9(&collect);
	}

	return status;
}