#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* tempfile; } ;
struct ref_lock {TYPE_3__ lk; } ;
struct files_ref_store {int dummy; } ;
struct TYPE_4__ {char const* buf; } ;
struct TYPE_5__ {int /*<<< orphan*/  fp; TYPE_1__ filename; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ref_lock*) ; 
 int /*<<< orphan*/  FUNC1 (struct ref_lock*,char const*) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ prefer_symlink_refs ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct files_ref_store*,struct ref_lock*,char const*,char const*,char const*) ; 

__attribute__((used)) static int FUNC7(struct files_ref_store *refs,
				struct ref_lock *lock, const char *refname,
				const char *target, const char *logmsg)
{
	if (prefer_symlink_refs && !FUNC1(lock, target)) {
		FUNC6(refs, lock, refname, target, logmsg);
		return 0;
	}

	if (!FUNC3(&lock->lk, "w"))
		return FUNC2("unable to fdopen %s: %s",
			     lock->lk.tempfile->filename.buf, FUNC5(errno));

	FUNC6(refs, lock, refname, target, logmsg);

	/* no error check; commit_ref will check ferror */
	FUNC4(lock->lk.tempfile->fp, "ref: %s\n", target);
	if (FUNC0(lock) < 0)
		return FUNC2("unable to write symref for %s: %s", refname,
			     FUNC5(errno));
	return 0;
}