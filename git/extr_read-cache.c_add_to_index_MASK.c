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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct object_id {int dummy; } ;
struct index_state {struct cache_entry** cache; } ;
struct cache_entry {int ce_namelen; scalar_t__ ce_mode; int /*<<< orphan*/  oid; int /*<<< orphan*/  ce_flags; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int ADD_CACHE_INTENT ; 
 int ADD_CACHE_NEW_ONLY ; 
 int ADD_CACHE_OK_TO_ADD ; 
 int ADD_CACHE_OK_TO_REPLACE ; 
 int ADD_CACHE_PRETEND ; 
 int ADD_CACHE_RENORMALIZE ; 
 int ADD_CACHE_VERBOSE ; 
 int /*<<< orphan*/  CE_ADDED ; 
 int /*<<< orphan*/  CE_INTENT_TO_ADD ; 
 unsigned int CE_MATCH_IGNORE_SKIP_WORKTREE ; 
 unsigned int CE_MATCH_IGNORE_VALID ; 
 unsigned int CE_MATCH_RACY_IS_DIRTY ; 
 int HASH_RENORMALIZE ; 
 int HASH_WRITE_OBJECT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (struct index_state*,struct cache_entry*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct index_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cache_entry*) ; 
 scalar_t__ FUNC8 (struct cache_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC10 (struct cache_entry*) ; 
 struct cache_entry* FUNC11 (struct index_state*,struct cache_entry*,struct cache_entry*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct cache_entry*,struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC14 (struct cache_entry*) ; 
 int FUNC15 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC16 (struct index_state*,struct cache_entry*,struct stat*) ; 
 scalar_t__ has_symlinks ; 
 int /*<<< orphan*/  FUNC17 (struct index_state*,struct cache_entry*,struct stat*,unsigned int) ; 
 scalar_t__ ignore_case ; 
 struct cache_entry* FUNC18 (struct index_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC19 (struct index_state*,char const*,int) ; 
 scalar_t__ FUNC20 (struct index_state*,int /*<<< orphan*/ *,char const*,struct stat*,int) ; 
 struct cache_entry* FUNC21 (struct index_state*,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (char*,char const*) ; 
 scalar_t__ FUNC25 (char const*,char*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC26 (struct cache_entry*) ; 
 int FUNC27 (char const*) ; 
 scalar_t__ trust_executable_bit ; 

int FUNC28(struct index_state *istate, const char *path, struct stat *st, int flags)
{
	int namelen, was_same;
	mode_t st_mode = st->st_mode;
	struct cache_entry *ce, *alias = NULL;
	unsigned ce_option = CE_MATCH_IGNORE_VALID|CE_MATCH_IGNORE_SKIP_WORKTREE|CE_MATCH_RACY_IS_DIRTY;
	int verbose = flags & (ADD_CACHE_VERBOSE | ADD_CACHE_PRETEND);
	int pretend = flags & ADD_CACHE_PRETEND;
	int intent_only = flags & ADD_CACHE_INTENT;
	int add_option = (ADD_CACHE_OK_TO_ADD|ADD_CACHE_OK_TO_REPLACE|
			  (intent_only ? ADD_CACHE_NEW_ONLY : 0));
	int hash_flags = HASH_WRITE_OBJECT;
	struct object_id oid;

	if (flags & ADD_CACHE_RENORMALIZE)
		hash_flags |= HASH_RENORMALIZE;

	if (!FUNC3(st_mode) && !FUNC2(st_mode) && !FUNC0(st_mode))
		return FUNC15(FUNC4("%s: can only add regular files, symbolic links or git-directories"), path);

	namelen = FUNC27(path);
	if (FUNC0(st_mode)) {
		if (FUNC25(path, "HEAD", &oid) < 0)
			return FUNC15(FUNC4("'%s' does not have a commit checked out"), path);
		while (namelen && path[namelen-1] == '/')
			namelen--;
	}
	ce = FUNC21(istate, namelen);
	FUNC22(ce->name, path, namelen);
	ce->ce_namelen = namelen;
	if (!intent_only)
		FUNC16(istate, ce, st);
	else
		ce->ce_flags |= CE_INTENT_TO_ADD;


	if (trust_executable_bit && has_symlinks) {
		ce->ce_mode = FUNC12(st_mode);
	} else {
		/* If there is an existing entry, pick the mode bits and type
		 * from it, otherwise assume unexecutable regular file.
		 */
		struct cache_entry *ent;
		int pos = FUNC19(istate, path, namelen);

		ent = (0 <= pos) ? istate->cache[pos] : NULL;
		ce->ce_mode = FUNC8(ent, st_mode);
	}

	/* When core.ignorecase=true, determine if a directory of the same name but differing
	 * case already exists within the Git repository.  If it does, ensure the directory
	 * case of the file being added to the repository matches (is folded into) the existing
	 * entry's directory case.
	 */
	if (ignore_case) {
		FUNC6(istate, ce->name);
	}
	if (!(flags & ADD_CACHE_RENORMALIZE)) {
		alias = FUNC18(istate, ce->name,
					  FUNC9(ce), ignore_case);
		if (alias &&
		    !FUNC10(alias) &&
		    !FUNC17(istate, alias, st, ce_option)) {
			/* Nothing changed, really */
			if (!FUNC1(alias->ce_mode))
				FUNC7(alias);
			alias->ce_flags |= CE_ADDED;

			FUNC14(ce);
			return 0;
		}
	}
	if (!intent_only) {
		if (FUNC20(istate, &ce->oid, path, st, hash_flags)) {
			FUNC14(ce);
			return FUNC15(FUNC4("unable to index file '%s'"), path);
		}
	} else
		FUNC26(ce);

	if (ignore_case && alias && FUNC13(ce, alias))
		ce = FUNC11(istate, ce, alias);
	ce->ce_flags |= CE_ADDED;

	/* It was suspected to be racily clean, but it turns out to be Ok */
	was_same = (alias &&
		    !FUNC10(alias) &&
		    FUNC23(&alias->oid, &ce->oid) &&
		    ce->ce_mode == alias->ce_mode);

	if (pretend)
		FUNC14(ce);
	else if (FUNC5(istate, ce, add_option)) {
		FUNC14(ce);
		return FUNC15(FUNC4("unable to add '%s' to index"), path);
	}
	if (verbose && !was_same)
		FUNC24("add '%s'\n", path);
	return 0;
}