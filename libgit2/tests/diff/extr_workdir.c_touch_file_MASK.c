#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_mtime; } ;
struct p_timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_3__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct p_timeval*) ; 

__attribute__((used)) static int FUNC5(void *payload, git_buf *path)
{
	struct stat st;
	struct p_timeval times[2];

	FUNC0(payload);
	if (FUNC2(path->ptr))
		return 0;

	FUNC1(FUNC3(path->ptr, &st));

	times[0].tv_sec = st.st_mtime + 3;
	times[0].tv_usec = 0;
	times[1].tv_sec = st.st_mtime + 3;
	times[1].tv_usec = 0;

	FUNC1(FUNC4(path->ptr, times));
	return 0;
}