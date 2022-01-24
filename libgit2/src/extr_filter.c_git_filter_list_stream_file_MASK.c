#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
struct TYPE_11__ {int (* write ) (TYPE_1__*,char*,scalar_t__) ;int (* close ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ git_writestream ;
typedef  int /*<<< orphan*/  git_vector ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_filter_list ;
struct TYPE_12__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FILTERIO_BUFSIZE ; 
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_VECTOR_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,char const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,char*,scalar_t__) ; 
 int FUNC9 (TYPE_1__*) ; 

int FUNC10(
	git_filter_list *filters,
	git_repository *repo,
	const char *path,
	git_writestream *target)
{
	char buf[FILTERIO_BUFSIZE];
	git_buf abspath = GIT_BUF_INIT;
	const char *base = repo ? FUNC3(repo) : NULL;
	git_vector filter_streams = GIT_VECTOR_INIT;
	git_writestream *stream_start;
	ssize_t readlen;
	int fd = -1, error, initialized = 0;

	if ((error = FUNC7(
			&stream_start, &filter_streams, filters, target)) < 0 ||
		(error = FUNC2(&abspath, path, base, NULL)) < 0)
		goto done;
	initialized = 1;

	if ((fd = FUNC1(abspath.ptr)) < 0) {
		error = fd;
		goto done;
	}

	while ((readlen = FUNC5(fd, buf, sizeof(buf))) > 0) {
		if ((error = stream_start->write(stream_start, buf, readlen)) < 0)
			goto done;
	}

	if (readlen < 0)
		error = -1;

done:
	if (initialized)
		error |= stream_start->close(stream_start);

	if (fd >= 0)
		FUNC4(fd);
	FUNC6(&filter_streams);
	FUNC0(&abspath);
	return error;
}