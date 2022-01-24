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
struct string_list {int dummy; } ;
struct strbuf {int len; char const* buf; } ;
struct ref_store {int dummy; } ;
struct ref_iterator {char const* refname; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DO_FOR_EACH_INCLUDE_BROKEN ; 
 int ITER_DONE ; 
 int ITER_OK ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 char* FUNC3 (char const*,struct string_list const*,struct string_list const*) ; 
 int /*<<< orphan*/  FUNC4 (struct ref_iterator*) ; 
 int FUNC5 (struct ref_iterator*) ; 
 int /*<<< orphan*/  FUNC6 (struct ref_store*,char const*,struct object_id*,struct strbuf*,unsigned int*) ; 
 struct ref_iterator* FUNC7 (struct ref_store*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*) ; 
 char* FUNC14 (char const*,char) ; 
 scalar_t__ FUNC15 (struct string_list const*,char const*) ; 
 scalar_t__ FUNC16 (char const*) ; 

int FUNC17(struct ref_store *refs,
				  const char *refname,
				  const struct string_list *extras,
				  const struct string_list *skip,
				  struct strbuf *err)
{
	const char *slash;
	const char *extra_refname;
	struct strbuf dirname = STRBUF_INIT;
	struct strbuf referent = STRBUF_INIT;
	struct object_id oid;
	unsigned int type;
	struct ref_iterator *iter;
	int ok;
	int ret = -1;

	/*
	 * For the sake of comments in this function, suppose that
	 * refname is "refs/foo/bar".
	 */

	FUNC2(err);

	FUNC12(&dirname, FUNC16(refname) + 1);
	for (slash = FUNC14(refname, '/'); slash; slash = FUNC14(slash + 1, '/')) {
		/* Expand dirname to the new prefix, not including the trailing slash: */
		FUNC8(&dirname, refname + dirname.len, slash - refname - dirname.len);

		/*
		 * We are still at a leading dir of the refname (e.g.,
		 * "refs/foo"; if there is a reference with that name,
		 * it is a conflict, *unless* it is in skip.
		 */
		if (skip && FUNC15(skip, dirname.buf))
			continue;

		if (!FUNC6(refs, dirname.buf, &oid, &referent, &type)) {
			FUNC10(err, FUNC1("'%s' exists; cannot create '%s'"),
				    dirname.buf, refname);
			goto cleanup;
		}

		if (extras && FUNC15(extras, dirname.buf)) {
			FUNC10(err, FUNC1("cannot process '%s' and '%s' at the same time"),
				    refname, dirname.buf);
			goto cleanup;
		}
	}

	/*
	 * We are at the leaf of our refname (e.g., "refs/foo/bar").
	 * There is no point in searching for a reference with that
	 * name, because a refname isn't considered to conflict with
	 * itself. But we still need to check for references whose
	 * names are in the "refs/foo/bar/" namespace, because they
	 * *do* conflict.
	 */
	FUNC11(&dirname, refname + dirname.len);
	FUNC9(&dirname, '/');

	iter = FUNC7(refs, dirname.buf, 0,
				       DO_FOR_EACH_INCLUDE_BROKEN);
	while ((ok = FUNC5(iter)) == ITER_OK) {
		if (skip &&
		    FUNC15(skip, iter->refname))
			continue;

		FUNC10(err, FUNC1("'%s' exists; cannot create '%s'"),
			    iter->refname, refname);
		FUNC4(iter);
		goto cleanup;
	}

	if (ok != ITER_DONE)
		FUNC0("error while iterating over references");

	extra_refname = FUNC3(dirname.buf, extras, skip);
	if (extra_refname)
		FUNC10(err, FUNC1("cannot process '%s' and '%s' at the same time"),
			    refname, extra_refname);
	else
		ret = 0;

cleanup:
	FUNC13(&referent);
	FUNC13(&dirname);
	return ret;
}