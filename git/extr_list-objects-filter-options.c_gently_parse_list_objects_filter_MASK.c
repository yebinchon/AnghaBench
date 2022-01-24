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
struct list_objects_filter_options {scalar_t__ choice; int /*<<< orphan*/  sparse_oid_name; int /*<<< orphan*/  tree_exclude_depth; int /*<<< orphan*/  blob_limit_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ LOFC_BLOB_LIMIT ; 
 scalar_t__ LOFC_BLOB_NONE ; 
 scalar_t__ LOFC_SPARSE_OID ; 
 scalar_t__ LOFC_TREE_DEPTH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct list_objects_filter_options*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct list_objects_filter_options*,char const*,struct strbuf*) ; 
 scalar_t__ FUNC5 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

__attribute__((used)) static int FUNC10(
	struct list_objects_filter_options *filter_options,
	const char *arg,
	struct strbuf *errbuf)
{
	const char *v0;

	if (!arg)
		return 0;

	if (filter_options->choice)
		FUNC0("filter_options already populated");

	if (!FUNC8(arg, "blob:none")) {
		filter_options->choice = LOFC_BLOB_NONE;
		return 0;

	} else if (FUNC5(arg, "blob:limit=", &v0)) {
		if (FUNC2(v0, &filter_options->blob_limit_value)) {
			filter_options->choice = LOFC_BLOB_LIMIT;
			return 0;
		}

	} else if (FUNC5(arg, "tree:", &v0)) {
		if (!FUNC2(v0, &filter_options->tree_exclude_depth)) {
			FUNC7(errbuf, FUNC1("expected 'tree:<depth>'"));
			return 1;
		}
		filter_options->choice = LOFC_TREE_DEPTH;
		return 0;

	} else if (FUNC5(arg, "sparse:oid=", &v0)) {
		filter_options->sparse_oid_name = FUNC9(v0);
		filter_options->choice = LOFC_SPARSE_OID;
		return 0;

	} else if (FUNC5(arg, "sparse:path=", &v0)) {
		if (errbuf) {
			FUNC7(
				errbuf,
				FUNC1("sparse:path filters support has been dropped"));
		}
		return 1;

	} else if (FUNC5(arg, "combine:", &v0)) {
		return FUNC4(filter_options, v0, errbuf);

	}
	/*
	 * Please update _git_fetch() in git-completion.bash when you
	 * add new filters
	 */

	FUNC6(errbuf, FUNC1("invalid filter-spec '%s'"), arg);

	FUNC3(filter_options, 0, sizeof(*filter_options));
	return 1;
}