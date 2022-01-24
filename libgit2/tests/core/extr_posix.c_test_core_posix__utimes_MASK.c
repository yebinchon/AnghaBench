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
typedef  int time_t ;
struct stat {int st_atime; int st_mtime; } ;
struct p_timeval {int tv_sec; scalar_t__ tv_usec; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int,struct p_timeval*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,struct stat*) ; 
 int FUNC8 (char*) ; 
 int FUNC9 (char*,struct p_timeval*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(void)
{
	struct p_timeval times[2];
	struct stat st;
	time_t curtime;
	int fd;

	/* test p_utimes */
	times[0].tv_sec = 1234567890;
	times[0].tv_usec = 0;
	times[1].tv_sec = 1234567890;
	times[1].tv_usec = 0;

	FUNC2("foo", "Dummy file.");
	FUNC3(FUNC9("foo", times));

	FUNC3(FUNC7("foo", &st));
	FUNC1(1234567890, st.st_atime);
	FUNC1(1234567890, st.st_mtime);


	/* test p_futimes */
	times[0].tv_sec = 1414141414;
	times[0].tv_usec = 0;
	times[1].tv_sec = 1414141414;
	times[1].tv_usec = 0;

	FUNC3(fd = FUNC6("foo", O_RDWR));
	FUNC3(FUNC5(fd, times));
	FUNC3(FUNC4(fd));

	FUNC3(FUNC7("foo", &st));
	FUNC1(1414141414, st.st_atime);
	FUNC1(1414141414, st.st_mtime);


	/* test p_utimes with current time, assume that
	 * it takes < 5 seconds to get the time...!
	 */
	FUNC3(FUNC9("foo", NULL));

	curtime = FUNC10(NULL);
	FUNC3(FUNC7("foo", &st));
	FUNC0((st.st_atime - curtime) < 5);
	FUNC0((st.st_mtime - curtime) < 5);

	FUNC3(FUNC8("foo"));
}