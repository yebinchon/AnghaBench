#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int CHUNKSIZE ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 

__attribute__((used)) static void FUNC7(const char *filename, size_t numchunks)
{
	git_buf path = GIT_BUF_INIT;
	char buf[CHUNKSIZE];
	size_t i = 0, j = 0;
	int fd;

	FUNC1(FUNC3(&path, "empty_standard_repo", filename));

	fd = FUNC5(path.ptr, O_RDWR|O_CREAT, 0666);
	FUNC0(fd >= 0);

	for (i = 0; i < numchunks; i++) {
		for (j = 0; j < CHUNKSIZE; j++) {
			buf[j] = i % 256;
		}

		FUNC1(FUNC6(fd, buf, CHUNKSIZE));
	}
	FUNC4(fd);

	FUNC2(&path);
}