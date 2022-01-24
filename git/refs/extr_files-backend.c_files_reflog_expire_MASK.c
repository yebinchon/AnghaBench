#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {char* buf; } ;
struct ref_store {int dummy; } ;
struct lock_file {int dummy; } ;
struct ref_lock {char* ref_name; struct lock_file lk; } ;
struct object_id {int dummy; } ;
struct files_ref_store {int dummy; } ;
struct expire_reflog_cb {unsigned int flags; int /*<<< orphan*/  last_kept_oid; void* policy_cb; int /*<<< orphan*/  newlog; int /*<<< orphan*/  should_prune_fn; } ;
typedef  int /*<<< orphan*/  reflog_expiry_should_prune_fn ;
typedef  int /*<<< orphan*/  (* reflog_expiry_prepare_fn ) (char const*,struct object_id const*,void*) ;
typedef  int /*<<< orphan*/  (* reflog_expiry_cleanup_fn ) (void*) ;
typedef  int /*<<< orphan*/  cb ;
struct TYPE_2__ {int /*<<< orphan*/  hexsz; } ;

/* Variables and functions */
 unsigned int EXPIRE_REFLOGS_DRY_RUN ; 
 unsigned int EXPIRE_REFLOGS_UPDATE_REF ; 
 struct lock_file LOCK_INIT ; 
 int REF_ISSYMREF ; 
 int /*<<< orphan*/  REF_NO_DEREF ; 
 int /*<<< orphan*/  REF_STORE_WRITE ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (struct lock_file*) ; 
 scalar_t__ FUNC1 (struct ref_lock*) ; 
 scalar_t__ FUNC2 (struct lock_file*) ; 
 scalar_t__ FUNC3 (struct ref_lock*) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC4 (char*,char const*,...) ; 
 int /*<<< orphan*/  expire_reflog_ent ; 
 int /*<<< orphan*/  FUNC5 (struct lock_file*,char*) ; 
 struct files_ref_store* FUNC6 (struct ref_store*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct files_ref_store*,struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct lock_file*) ; 
 char* FUNC10 (struct lock_file*) ; 
 scalar_t__ FUNC11 (struct lock_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct ref_lock* FUNC13 (struct files_ref_store*,char const*,struct object_id const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct expire_reflog_cb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct ref_store*,char const*,int /*<<< orphan*/ ,struct expire_reflog_cb*) ; 
 int /*<<< orphan*/  FUNC17 (struct ref_store*,char const*) ; 
 int /*<<< orphan*/  FUNC18 (struct lock_file*) ; 
 char* FUNC19 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct strbuf*) ; 
 char* FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char const*,struct object_id const*,void*) ; 
 int /*<<< orphan*/  FUNC23 (void*) ; 
 TYPE_1__* the_hash_algo ; 
 int /*<<< orphan*/  FUNC24 (char*,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC25 (struct ref_lock*) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC28(struct ref_store *ref_store,
			       const char *refname, const struct object_id *oid,
			       unsigned int flags,
			       reflog_expiry_prepare_fn prepare_fn,
			       reflog_expiry_should_prune_fn should_prune_fn,
			       reflog_expiry_cleanup_fn cleanup_fn,
			       void *policy_cb_data)
{
	struct files_ref_store *refs =
		FUNC6(ref_store, REF_STORE_WRITE, "reflog_expire");
	struct lock_file reflog_lock = LOCK_INIT;
	struct expire_reflog_cb cb;
	struct ref_lock *lock;
	struct strbuf log_file_sb = STRBUF_INIT;
	char *log_file;
	int status = 0;
	int type;
	struct strbuf err = STRBUF_INIT;

	FUNC14(&cb, 0, sizeof(cb));
	cb.flags = flags;
	cb.policy_cb = policy_cb_data;
	cb.should_prune_fn = should_prune_fn;

	/*
	 * The reflog file is locked by holding the lock on the
	 * reference itself, plus we might need to update the
	 * reference if --updateref was specified:
	 */
	lock = FUNC13(refs, refname, oid,
				  NULL, NULL, REF_NO_DEREF,
				  &type, &err);
	if (!lock) {
		FUNC4("cannot lock ref '%s': %s", refname, err.buf);
		FUNC20(&err);
		return -1;
	}
	if (!FUNC17(ref_store, refname)) {
		FUNC25(lock);
		return 0;
	}

	FUNC7(refs, &log_file_sb, refname);
	log_file = FUNC19(&log_file_sb, NULL);
	if (!(flags & EXPIRE_REFLOGS_DRY_RUN)) {
		/*
		 * Even though holding $GIT_DIR/logs/$reflog.lock has
		 * no locking implications, we use the lock_file
		 * machinery here anyway because it does a lot of the
		 * work we need, including cleaning up if the program
		 * exits unexpectedly.
		 */
		if (FUNC11(&reflog_lock, log_file, 0) < 0) {
			struct strbuf err = STRBUF_INIT;
			FUNC24(log_file, errno, &err);
			FUNC4("%s", err.buf);
			FUNC20(&err);
			goto failure;
		}
		cb.newlog = FUNC5(&reflog_lock, "w");
		if (!cb.newlog) {
			FUNC4("cannot fdopen %s (%s)",
			      FUNC10(&reflog_lock), FUNC21(errno));
			goto failure;
		}
	}

	(*prepare_fn)(refname, oid, cb.policy_cb);
	FUNC16(ref_store, refname, expire_reflog_ent, &cb);
	(*cleanup_fn)(cb.policy_cb);

	if (!(flags & EXPIRE_REFLOGS_DRY_RUN)) {
		/*
		 * It doesn't make sense to adjust a reference pointed
		 * to by a symbolic ref based on expiring entries in
		 * the symbolic reference's reflog. Nor can we update
		 * a reference if there are no remaining reflog
		 * entries.
		 */
		int update = (flags & EXPIRE_REFLOGS_UPDATE_REF) &&
			!(type & REF_ISSYMREF) &&
			!FUNC12(&cb.last_kept_oid);

		if (FUNC0(&reflog_lock)) {
			status |= FUNC4("couldn't write %s: %s", log_file,
					FUNC21(errno));
			FUNC18(&reflog_lock);
		} else if (update &&
			   (FUNC26(FUNC9(&lock->lk),
				FUNC15(&cb.last_kept_oid), the_hash_algo->hexsz) < 0 ||
			    FUNC27(FUNC9(&lock->lk), "\n") < 0 ||
			    FUNC1(lock) < 0)) {
			status |= FUNC4("couldn't write %s",
					FUNC10(&lock->lk));
			FUNC18(&reflog_lock);
		} else if (FUNC2(&reflog_lock)) {
			status |= FUNC4("unable to write reflog '%s' (%s)",
					log_file, FUNC21(errno));
		} else if (update && FUNC3(lock)) {
			status |= FUNC4("couldn't set %s", lock->ref_name);
		}
	}
	FUNC8(log_file);
	FUNC25(lock);
	return status;

 failure:
	FUNC18(&reflog_lock);
	FUNC8(log_file);
	FUNC25(lock);
	return -1;
}