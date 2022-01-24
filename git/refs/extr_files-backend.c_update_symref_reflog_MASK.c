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
struct ref_lock {int /*<<< orphan*/  old_oid; } ;
struct object_id {int dummy; } ;
struct files_ref_store {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  RESOLVE_REF_READING ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct files_ref_store*,char const*,int /*<<< orphan*/ *,struct object_id*,char const*,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,struct object_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 

__attribute__((used)) static void FUNC4(struct files_ref_store *refs,
				 struct ref_lock *lock, const char *refname,
				 const char *target, const char *logmsg)
{
	struct strbuf err = STRBUF_INIT;
	struct object_id new_oid;
	if (logmsg &&
	    !FUNC2(&refs->base, target,
				RESOLVE_REF_READING, &new_oid, NULL) &&
	    FUNC1(refs, refname, &lock->old_oid,
				&new_oid, logmsg, 0, &err)) {
		FUNC0("%s", err.buf);
		FUNC3(&err);
	}
}