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
typedef  int /*<<< orphan*/  git_stream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ ctor_called ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **,char*,char*) ; 
 int /*<<< orphan*/  test_stream ; 
 int /*<<< orphan*/ * test_stream_init ; 

void FUNC8(void)
{
	git_stream *stream;
	int error;

	ctor_called = 0;
	FUNC4(FUNC6(test_stream_init));
	FUNC4(FUNC7(&stream, "localhost", "443"));
	FUNC1(1, ctor_called);
	FUNC2(&test_stream, stream);

	ctor_called = 0;
	stream = NULL;
	FUNC4(FUNC6(NULL));
	error = FUNC7(&stream, "localhost", "443");

	/*
	 * We don't have TLS support enabled, or we're on Windows,
	 * which has no arbitrary TLS stream support.
	 */
#if defined(GIT_WIN32) || !defined(GIT_HTTPS)
	FUNC3(-1, error);
#else
	cl_git_pass(error);
#endif

	FUNC1(0, ctor_called);
	FUNC0(&test_stream != stream);

	FUNC5(stream);
}