#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  void* time_t ;
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_gid; int /*<<< orphan*/  st_uid; int /*<<< orphan*/  st_ino; int /*<<< orphan*/  st_dev; scalar_t__ st_mtime_nsec; scalar_t__ st_ctime_nsec; scalar_t__ st_mtime; scalar_t__ st_ctime; } ;
struct p_timeval {scalar_t__ tv_usec; void* tv_sec; } ;
typedef  void* int32_t ;
struct TYPE_11__ {scalar_t__ nanoseconds; void* seconds; } ;
struct TYPE_10__ {scalar_t__ nanoseconds; void* seconds; } ;
struct TYPE_12__ {scalar_t__ file_size; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  ino; int /*<<< orphan*/  dev; TYPE_2__ mtime; TYPE_1__ ctime; } ;
typedef  TYPE_3__ git_index_entry ;
struct TYPE_13__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_4__ git_buf ;

/* Variables and functions */
 TYPE_4__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  TEST_REPO_PATH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct p_timeval*) ; 
 int /*<<< orphan*/  repo_index ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(char *files[])
{
	char *filename;
	struct stat statbuf;
	git_buf path = GIT_BUF_INIT;
	git_index_entry *entry;
	struct p_timeval times[2];
	time_t now;
	size_t i;

	/* Update the index to suggest that checkout placed these files on
	 * disk, keeping the object id but updating the cache, which will
	 * emulate a Git implementation's different filter.
	 *
	 * We set the file's timestamp to before now to pretend that
	 * it was an old checkout so we don't trigger the racy
	 * protections would would check the content.
	 */

	now = FUNC8(NULL);
	times[0].tv_sec  = now - 5;
	times[0].tv_usec = 0;
	times[1].tv_sec  = now - 5;
	times[1].tv_usec = 0;

	for (i = 0, filename = files[i]; filename; filename = files[++i]) {
		FUNC2(&path);

		FUNC0(entry = (git_index_entry *)
			FUNC5(repo_index, filename, 0));

		FUNC1(FUNC4(&path, "%s/%s", TEST_REPO_PATH, filename));
		FUNC1(FUNC7(path.ptr, times));
		FUNC1(FUNC6(path.ptr, &statbuf));

		entry->ctime.seconds = (int32_t)statbuf.st_ctime;
		entry->mtime.seconds = (int32_t)statbuf.st_mtime;
#if defined(GIT_USE_NSEC)
		entry->ctime.nanoseconds = statbuf.st_ctime_nsec;
		entry->mtime.nanoseconds = statbuf.st_mtime_nsec;
#else
		entry->ctime.nanoseconds = 0;
		entry->mtime.nanoseconds = 0;
#endif
		entry->dev = statbuf.st_dev;
		entry->ino = statbuf.st_ino;
		entry->uid  = statbuf.st_uid;
		entry->gid  = statbuf.st_gid;
		entry->file_size = (uint32_t)statbuf.st_size;
	}

	FUNC3(&path);
}