#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stat {int st_mode; } ;
typedef  int mode_t ;
struct TYPE_6__ {int /*<<< orphan*/ * buffer; } ;
typedef  TYPE_1__ git_filebuf ;

/* Variables and functions */
 TYPE_1__ GIT_FILEBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct stat*) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

void FUNC10(void)
{
	git_filebuf file = GIT_FILEBUF_INIT;
	char test[] = "test";
	struct stat statbuf;
	mode_t mask, os_mask;

#ifdef GIT_WIN32
	os_mask = 0600;
#else
	os_mask = 0777;
#endif

	FUNC8(mask = FUNC8(0));

	FUNC0(file.buffer == NULL);

	FUNC2(FUNC5(&file, test, 0, 0666));
	FUNC0(file.buffer != NULL);
	FUNC2(FUNC6(&file, "%s\n", "libgit2 rocks"));
	FUNC0(file.buffer != NULL);

	FUNC2(FUNC4(&file));
	FUNC0(file.buffer == NULL);

	FUNC3(FUNC7("test", &statbuf));
	FUNC1(statbuf.st_mode & os_mask, (0666 & ~mask) & os_mask);

	FUNC3(FUNC9(test));
}