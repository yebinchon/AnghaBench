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
struct strbuf {char* buf; } ;
struct stat {int /*<<< orphan*/  st_mode; int /*<<< orphan*/  st_size; } ;
struct ref_store {int dummy; } ;
struct object_id {int dummy; } ;
struct files_ref_store {int /*<<< orphan*/  packed_ref_store; } ;

/* Variables and functions */
 int EINVAL ; 
 int EISDIR ; 
 int ENOENT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 unsigned int REF_ISBROKEN ; 
 unsigned int REF_ISSYMREF ; 
 int /*<<< orphan*/  REF_STORE_READ ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int errno ; 
 struct files_ref_store* FUNC4 (struct ref_store*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct files_ref_store*,struct strbuf*,char const*) ; 
 scalar_t__ FUNC6 (char const) ; 
 scalar_t__ FUNC7 (char const*,struct stat*) ; 
 int FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char const*,struct object_id*,char const**) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char const*,struct object_id*,struct strbuf*,unsigned int*) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,char const*) ; 
 scalar_t__ FUNC13 (struct strbuf*,int,int) ; 
 scalar_t__ FUNC14 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC17 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC18 (struct strbuf*,struct strbuf*) ; 

__attribute__((used)) static int FUNC19(struct ref_store *ref_store,
			      const char *refname, struct object_id *oid,
			      struct strbuf *referent, unsigned int *type)
{
	struct files_ref_store *refs =
		FUNC4(ref_store, REF_STORE_READ, "read_raw_ref");
	struct strbuf sb_contents = STRBUF_INIT;
	struct strbuf sb_path = STRBUF_INIT;
	const char *path;
	const char *buf;
	const char *p;
	struct stat st;
	int fd;
	int ret = -1;
	int save_errno;
	int remaining_retries = 3;

	*type = 0;
	FUNC16(&sb_path);

	FUNC5(refs, &sb_path, refname);

	path = sb_path.buf;

stat_ref:
	/*
	 * We might have to loop back here to avoid a race
	 * condition: first we lstat() the file, then we try
	 * to read it as a link or as a file.  But if somebody
	 * changes the type of the file (file <-> directory
	 * <-> symlink) between the lstat() and reading, then
	 * we don't want to report that as an error but rather
	 * try again starting with the lstat().
	 *
	 * We'll keep a count of the retries, though, just to avoid
	 * any confusing situation sending us into an infinite loop.
	 */

	if (remaining_retries-- <= 0)
		goto out;

	if (FUNC7(path, &st) < 0) {
		if (errno != ENOENT)
			goto out;
		if (FUNC10(refs->packed_ref_store, refname,
				      oid, referent, type)) {
			errno = ENOENT;
			goto out;
		}
		ret = 0;
		goto out;
	}

	/* Follow "normalized" - ie "refs/.." symlinks by hand */
	if (FUNC1(st.st_mode)) {
		FUNC16(&sb_contents);
		if (FUNC14(&sb_contents, path, st.st_size) < 0) {
			if (errno == ENOENT || errno == EINVAL)
				/* inconsistent with lstat; retry */
				goto stat_ref;
			else
				goto out;
		}
		if (FUNC11(sb_contents.buf, "refs/") &&
		    !FUNC2(sb_contents.buf, 0)) {
			FUNC18(&sb_contents, referent);
			*type |= REF_ISSYMREF;
			ret = 0;
			goto out;
		}
		/*
		 * It doesn't look like a refname; fall through to just
		 * treating it like a non-symlink, and reading whatever it
		 * points to.
		 */
	}

	/* Is it a directory? */
	if (FUNC0(st.st_mode)) {
		/*
		 * Even though there is a directory where the loose
		 * ref is supposed to be, there could still be a
		 * packed ref:
		 */
		if (FUNC10(refs->packed_ref_store, refname,
				      oid, referent, type)) {
			errno = EISDIR;
			goto out;
		}
		ret = 0;
		goto out;
	}

	/*
	 * Anything else, just open it and try to use it as
	 * a ref
	 */
	fd = FUNC8(path, O_RDONLY);
	if (fd < 0) {
		if (errno == ENOENT && !FUNC1(st.st_mode))
			/* inconsistent with lstat; retry */
			goto stat_ref;
		else
			goto out;
	}
	FUNC16(&sb_contents);
	if (FUNC13(&sb_contents, fd, 256) < 0) {
		int save_errno = errno;
		FUNC3(fd);
		errno = save_errno;
		goto out;
	}
	FUNC3(fd);
	FUNC17(&sb_contents);
	buf = sb_contents.buf;
	if (FUNC11(buf, "ref:")) {
		buf += 4;
		while (FUNC6(*buf))
			buf++;

		FUNC16(referent);
		FUNC12(referent, buf);
		*type |= REF_ISSYMREF;
		ret = 0;
		goto out;
	}

	/*
	 * Please note that FETCH_HEAD has additional
	 * data after the sha.
	 */
	if (FUNC9(buf, oid, &p) ||
	    (*p != '\0' && !FUNC6(*p))) {
		*type |= REF_ISBROKEN;
		errno = EINVAL;
		goto out;
	}

	ret = 0;

out:
	save_errno = errno;
	FUNC15(&sb_path);
	FUNC15(&sb_contents);
	errno = save_errno;
	return ret;
}