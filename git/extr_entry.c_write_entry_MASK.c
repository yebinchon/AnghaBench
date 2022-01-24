#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct submodule {int dummy; } ;
struct stream_filter {int dummy; } ;
struct strbuf {int dummy; } ;
struct stat {int dummy; } ;
struct delayed_checkout {int /*<<< orphan*/  paths; int /*<<< orphan*/  state; } ;
struct checkout {TYPE_1__* istate; scalar_t__ refresh_cache; int /*<<< orphan*/  force; struct delayed_checkout* delayed_checkout; } ;
struct cache_entry {unsigned int ce_mode; char* name; int /*<<< orphan*/  ce_flags; int /*<<< orphan*/  oid; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_7__ {int /*<<< orphan*/  cache_changed; } ;

/* Variables and functions */
 int /*<<< orphan*/  CE_ENTRY_CHANGED ; 
 int /*<<< orphan*/  CE_NO_DELAY ; 
 int /*<<< orphan*/  CE_RETRY ; 
 int /*<<< orphan*/  CE_UPDATE_IN_BASE ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  SUBMODULE_MOVE_HEAD_FORCE ; 
#define  S_IFGITLINK 130 
#define  S_IFLNK 129 
 unsigned int S_IFMT ; 
#define  S_IFREG 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,char*,char*,unsigned long,struct strbuf*,struct delayed_checkout*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_1__*,char*,char*,unsigned long,struct strbuf*) ; 
 int FUNC4 (char*,char*,...) ; 
 int FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct cache_entry*,struct stat*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int,struct checkout const*,struct stat*) ; 
 struct stream_filter* FUNC9 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  has_symlinks ; 
 scalar_t__ FUNC10 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 char* FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (char*,struct cache_entry*,int) ; 
 char* FUNC15 (struct cache_entry*,unsigned long*) ; 
 char* FUNC16 (struct strbuf*,size_t*) ; 
 int /*<<< orphan*/  FUNC17 (struct cache_entry*,char*,struct stream_filter*,struct checkout const*,int,int*,struct stat*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*) ; 
 struct submodule* FUNC19 (struct cache_entry*) ; 
 int FUNC20 (char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC21 (char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (int,char*,unsigned long) ; 

__attribute__((used)) static int FUNC23(struct cache_entry *ce,
		       char *path, const struct checkout *state, int to_tempfile)
{
	unsigned int ce_mode_s_ifmt = ce->ce_mode & S_IFMT;
	struct delayed_checkout *dco = state->delayed_checkout;
	int fd, ret, fstat_done = 0;
	char *new_blob;
	struct strbuf buf = STRBUF_INIT;
	unsigned long size;
	ssize_t wrote;
	size_t newsize = 0;
	struct stat st;
	const struct submodule *sub;

	if (ce_mode_s_ifmt == S_IFREG) {
		struct stream_filter *filter = FUNC9(state->istate, ce->name,
								 &ce->oid);
		if (filter &&
		    !FUNC17(ce, path, filter,
					   state, to_tempfile,
					   &fstat_done, &st))
			goto finish;
	}

	switch (ce_mode_s_ifmt) {
	case S_IFLNK:
		new_blob = FUNC15(ce, &size);
		if (!new_blob)
			return FUNC4("unable to read sha1 file of %s (%s)",
				     path, FUNC13(&ce->oid));

		/*
		 * We can't make a real symlink; write out a regular file entry
		 * with the symlink destination as its contents.
		 */
		if (!has_symlinks || to_tempfile)
			goto write_file_entry;

		ret = FUNC21(new_blob, path);
		FUNC7(new_blob);
		if (ret)
			return FUNC5("unable to create symlink %s", path);
		break;

	case S_IFREG:
		/*
		 * We do not send the blob in case of a retry, so do not
		 * bother reading it at all.
		 */
		if (dco && dco->state == CE_RETRY) {
			new_blob = NULL;
			size = 0;
		} else {
			new_blob = FUNC15(ce, &size);
			if (!new_blob)
				return FUNC4("unable to read sha1 file of %s (%s)",
					     path, FUNC13(&ce->oid));
		}

		/*
		 * Convert from git internal format to working tree format
		 */
		if (dco && dco->state != CE_NO_DELAY) {
			ret = FUNC1(state->istate, ce->name, new_blob,
							    size, &buf, dco);
			if (ret && FUNC18(&dco->paths, ce->name)) {
				FUNC7(new_blob);
				goto delayed;
			}
		} else
			ret = FUNC3(state->istate, ce->name, new_blob, size, &buf);

		if (ret) {
			FUNC7(new_blob);
			new_blob = FUNC16(&buf, &newsize);
			size = newsize;
		}
		/*
		 * No "else" here as errors from convert are OK at this
		 * point. If the error would have been fatal (e.g.
		 * filter is required), then we would have died already.
		 */

	write_file_entry:
		fd = FUNC14(path, ce, to_tempfile);
		if (fd < 0) {
			FUNC7(new_blob);
			return FUNC5("unable to create file %s", path);
		}

		wrote = FUNC22(fd, new_blob, size);
		if (!to_tempfile)
			fstat_done = FUNC8(fd, state, &st);
		FUNC2(fd);
		FUNC7(new_blob);
		if (wrote < 0)
			return FUNC4("unable to write file %s", path);
		break;

	case S_IFGITLINK:
		if (to_tempfile)
			return FUNC4("cannot create temporary submodule %s", path);
		if (FUNC12(path, 0777) < 0)
			return FUNC4("cannot create submodule directory %s", path);
		sub = FUNC19(ce);
		if (sub)
			return FUNC20(ce->name,
				NULL, FUNC13(&ce->oid),
				state->force ? SUBMODULE_MOVE_HEAD_FORCE : 0);
		break;

	default:
		return FUNC4("unknown file mode for %s in index", path);
	}

finish:
	if (state->refresh_cache) {
		FUNC0(state->istate);
		if (!fstat_done)
			if (FUNC10(ce->name, &st) < 0)
				return FUNC5("unable to stat just-written file %s",
						   ce->name);
		FUNC6(state->istate, ce, &st);
		ce->ce_flags |= CE_UPDATE_IN_BASE;
		FUNC11(state->istate, ce);
		state->istate->cache_changed |= CE_ENTRY_CHANGED;
	}
delayed:
	return 0;
}