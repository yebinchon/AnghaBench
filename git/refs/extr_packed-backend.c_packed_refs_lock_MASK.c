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
struct strbuf {int dummy; } ;
struct ref_store {int dummy; } ;
struct packed_ref_store {int /*<<< orphan*/  lock; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int REF_STORE_MAIN ; 
 int REF_STORE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct packed_ref_store*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (struct packed_ref_store*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 struct packed_ref_store* FUNC5 (struct ref_store*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct strbuf*) ; 

int FUNC10(struct ref_store *ref_store, int flags, struct strbuf *err)
{
	struct packed_ref_store *refs =
		FUNC5(ref_store, REF_STORE_WRITE | REF_STORE_MAIN,
				"packed_refs_lock");
	static int timeout_configured = 0;
	static int timeout_value = 1000;

	if (!timeout_configured) {
		FUNC3("core.packedrefstimeout", &timeout_value);
		timeout_configured = 1;
	}

	/*
	 * Note that we close the lockfile immediately because we
	 * don't write new content to it, but rather to a separate
	 * tempfile.
	 */
	if (FUNC4(
			    &refs->lock,
			    refs->path,
			    flags, timeout_value) < 0) {
		FUNC9(refs->path, errno, err);
		return -1;
	}

	if (FUNC1(&refs->lock)) {
		FUNC7(err, "unable to close %s: %s", refs->path, FUNC8(errno));
		FUNC6(&refs->lock);
		return -1;
	}

	/*
	 * There is a stat-validity problem might cause `update-ref -d`
	 * lost the newly commit of a ref, because a new `packed-refs`
	 * file might has the same on-disk file attributes such as
	 * timestamp, file size and inode value, but has a changed
	 * ref value.
	 *
	 * This could happen with a very small chance when
	 * `update-ref -d` is called and at the same time another
	 * `pack-refs --all` process is running.
	 *
	 * Now that we hold the `packed-refs` lock, it is important
	 * to make sure we could read the latest version of
	 * `packed-refs` file no matter we have just mmap it or not.
	 * So what need to do is clear the snapshot if we hold it
	 * already.
	 */
	FUNC0(refs);

	/*
	 * Now make sure that the packed-refs file as it exists in the
	 * locked state is loaded into the snapshot:
	 */
	FUNC2(refs);
	return 0;
}