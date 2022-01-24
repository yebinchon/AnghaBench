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
struct strbuf {size_t len; int /*<<< orphan*/  buf; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct ref_store {int dummy; } ;
struct ref_dir {int /*<<< orphan*/  cache; } ;
struct object_id {int dummy; } ;
struct files_ref_store {int /*<<< orphan*/  base; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  REFNAME_ALLOW_ONELEVEL ; 
 int REF_BAD_NAME ; 
 int REF_ISBROKEN ; 
 int /*<<< orphan*/  REF_STORE_READ ; 
 int /*<<< orphan*/  RESOLVE_REF_READING ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ref_dir*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ref_dir*,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct object_id*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 struct files_ref_store* FUNC9 (struct ref_store*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct files_ref_store*,struct strbuf*,char const*) ; 
 scalar_t__ FUNC11 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC12 (struct object_id*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 struct dirent* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object_id*,int*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC18 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC20 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC21 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC23 (struct strbuf*,size_t) ; 
 int FUNC24 (char const*) ; 

__attribute__((used)) static void FUNC25(struct ref_store *ref_store,
			       struct ref_dir *dir, const char *dirname)
{
	struct files_ref_store *refs =
		FUNC9(ref_store, REF_STORE_READ, "fill_ref_dir");
	DIR *d;
	struct dirent *de;
	int dirnamelen = FUNC24(dirname);
	struct strbuf refname;
	struct strbuf path = STRBUF_INIT;
	size_t path_baselen;

	FUNC10(refs, &path, dirname);
	path_baselen = path.len;

	d = FUNC13(path.buf);
	if (!d) {
		FUNC22(&path);
		return;
	}

	FUNC21(&refname, dirnamelen + 257);
	FUNC18(&refname, dirname, dirnamelen);

	while ((de = FUNC14(d)) != NULL) {
		struct object_id oid;
		struct stat st;
		int flag;

		if (de->d_name[0] == '.')
			continue;
		if (FUNC8(de->d_name, ".lock"))
			continue;
		FUNC20(&refname, de->d_name);
		FUNC20(&path, de->d_name);
		if (FUNC17(path.buf, &st) < 0) {
			; /* silently ignore */
		} else if (FUNC0(st.st_mode)) {
			FUNC19(&refname, '/');
			FUNC1(dir,
					 FUNC5(dir->cache, refname.buf,
							  refname.len, 1));
		} else {
			if (!FUNC16(&refs->base,
						     refname.buf,
						     RESOLVE_REF_READING,
						     &oid, &flag)) {
				FUNC12(&oid);
				flag |= REF_ISBROKEN;
			} else if (FUNC11(&oid)) {
				/*
				 * It is so astronomically unlikely
				 * that null_oid is the OID of an
				 * actual object that we consider its
				 * appearance in a loose reference
				 * file to be repo corruption
				 * (probably due to a software bug).
				 */
				flag |= REF_ISBROKEN;
			}

			if (FUNC3(refname.buf,
						 REFNAME_ALLOW_ONELEVEL)) {
				if (!FUNC15(refname.buf))
					FUNC7("loose refname is dangerous: %s", refname.buf);
				FUNC12(&oid);
				flag |= REF_BAD_NAME | REF_ISBROKEN;
			}
			FUNC1(dir,
					 FUNC6(refname.buf, &oid, flag));
		}
		FUNC23(&refname, dirnamelen);
		FUNC23(&path, path_baselen);
	}
	FUNC22(&refname);
	FUNC22(&path);
	FUNC4(d);

	FUNC2(dir, dirname);
}