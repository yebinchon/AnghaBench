#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct p_timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_15__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_16__ {TYPE_1__ mtime; } ;
struct TYPE_17__ {TYPE_2__ stamp; } ;
typedef  TYPE_3__ git_index ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_18__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_4__ git_buf ;

/* Variables and functions */
 TYPE_4__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct p_timeval*) ; 

void FUNC16(void)
{
	git_index *index;
	git_diff *diff;
	git_buf path = GIT_BUF_INIT;
	struct p_timeval times[2];

	/* Make sure we do have a timestamp */
	FUNC2(FUNC13(&index, g_repo));
	FUNC2(FUNC12(index));

	FUNC2(FUNC4(&path, FUNC14(g_repo), "A"));
	FUNC1(path.ptr, "A");
	/* Force the file's timestamp to be a second after we wrote the index */
	times[0].tv_sec = index->stamp.mtime.tv_sec + 1;
	times[0].tv_usec = index->stamp.mtime.tv_nsec / 1000;
	times[1].tv_sec = index->stamp.mtime.tv_sec + 1;
	times[1].tv_usec = index->stamp.mtime.tv_nsec / 1000;
	FUNC2(FUNC15(path.ptr, times));

	/*
	 * Put 'A' into the index, the size field will be filled,
	 * because the index' on-disk timestamp does not match the
	 * file's timestamp.
	 */
	FUNC2(FUNC8(index, "A"));
	FUNC2(FUNC12(index));

	FUNC1(path.ptr, "B");
	/*
	 * Pretend this index' modification happened a second after the
	 * file update, and rewrite the file in that same second.
	 */
	times[0].tv_sec = index->stamp.mtime.tv_sec + 2;
	times[0].tv_usec = index->stamp.mtime.tv_nsec / 1000;
	times[1].tv_sec = index->stamp.mtime.tv_sec + 2;
	times[0].tv_usec = index->stamp.mtime.tv_nsec / 1000;

	FUNC2(FUNC15(FUNC10(index), times));
	FUNC2(FUNC15(path.ptr, times));

	FUNC2(FUNC11(index, true));

	FUNC2(FUNC6(&diff, g_repo, index, NULL));
	FUNC0(1, FUNC7(diff));

	FUNC3(&path);
	FUNC5(diff);
	FUNC9(index);
}