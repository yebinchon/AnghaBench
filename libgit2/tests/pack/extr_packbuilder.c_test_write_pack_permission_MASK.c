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
struct stat {int st_mode; } ;
typedef  int mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  _packbuilder ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct stat*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(mode_t given, mode_t expected)
{
	struct stat statbuf;
	mode_t mask, os_mask;

	FUNC5();

	FUNC2(_packbuilder, ".", given, NULL, NULL);

	/* Windows does not return group/user bits from stat,
	* files are never executable.
	*/
#ifdef GIT_WIN32
	os_mask = 0600;
#else
	os_mask = 0777;
#endif

	mask = FUNC4(0);
	FUNC4(mask);

	FUNC1(FUNC3("pack-7f5fa362c664d68ba7221259be1cbd187434b2f0.idx", &statbuf));
	FUNC0(statbuf.st_mode & os_mask, (expected & ~mask) & os_mask);

	FUNC1(FUNC3("pack-7f5fa362c664d68ba7221259be1cbd187434b2f0.pack", &statbuf));
	FUNC0(statbuf.st_mode & os_mask, (expected & ~mask) & os_mask);
}