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
struct ref_store {int dummy; } ;
struct ref_lock {int dummy; } ;
struct files_ref_store {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REF_NO_DEREF ; 
 int /*<<< orphan*/  REF_STORE_WRITE ; 
 struct strbuf STRBUF_INIT ; 
 int FUNC0 (struct files_ref_store*,struct ref_lock*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct files_ref_store* FUNC2 (struct ref_store*,int /*<<< orphan*/ ,char*) ; 
 struct ref_lock* FUNC3 (struct files_ref_store*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct ref_lock*) ; 

__attribute__((used)) static int FUNC6(struct ref_store *ref_store,
			       const char *refname, const char *target,
			       const char *logmsg)
{
	struct files_ref_store *refs =
		FUNC2(ref_store, REF_STORE_WRITE, "create_symref");
	struct strbuf err = STRBUF_INIT;
	struct ref_lock *lock;
	int ret;

	lock = FUNC3(refs, refname, NULL,
				  NULL, NULL, REF_NO_DEREF, NULL,
				  &err);
	if (!lock) {
		FUNC1("%s", err.buf);
		FUNC4(&err);
		return -1;
	}

	ret = FUNC0(refs, lock, refname, target, logmsg);
	FUNC5(lock);
	return ret;
}