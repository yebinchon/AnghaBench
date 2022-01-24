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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;
struct files_ref_store {int dummy; } ;

/* Variables and functions */
 scalar_t__ LOG_REFS_NONE ; 
 scalar_t__ LOG_REFS_NORMAL ; 
 scalar_t__ LOG_REFS_UNSET ; 
 int REF_FORCE_CREATE_REFLOG ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct files_ref_store*,struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ log_all_ref_updates ; 
 int FUNC4 (struct files_ref_store*,char const*,int,int*,struct strbuf*) ; 
 int FUNC5 (int,struct object_id const*,struct object_id const*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct files_ref_store *refs,
			       const char *refname, const struct object_id *old_oid,
			       const struct object_id *new_oid, const char *msg,
			       int flags, struct strbuf *err)
{
	int logfd, result;

	if (log_all_ref_updates == LOG_REFS_UNSET)
		log_all_ref_updates = FUNC3() ? LOG_REFS_NONE : LOG_REFS_NORMAL;

	result = FUNC4(refs, refname,
			       flags & REF_FORCE_CREATE_REFLOG,
			       &logfd, err);

	if (result)
		return result;

	if (logfd < 0)
		return 0;
	result = FUNC5(logfd, old_oid, new_oid,
				  FUNC2(0), msg);
	if (result) {
		struct strbuf sb = STRBUF_INIT;
		int save_errno = errno;

		FUNC1(refs, &sb, refname);
		FUNC6(err, "unable to append to '%s': %s",
			    sb.buf, FUNC8(save_errno));
		FUNC7(&sb);
		FUNC0(logfd);
		return -1;
	}
	if (FUNC0(logfd)) {
		struct strbuf sb = STRBUF_INIT;
		int save_errno = errno;

		FUNC1(refs, &sb, refname);
		FUNC6(err, "unable to append to '%s': %s",
			    sb.buf, FUNC8(save_errno));
		FUNC7(&sb);
		return -1;
	}
	return 0;
}