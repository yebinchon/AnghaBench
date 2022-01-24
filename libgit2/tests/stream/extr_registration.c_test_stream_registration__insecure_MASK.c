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
struct TYPE_3__ {int version; int /*<<< orphan*/  wrap; int /*<<< orphan*/  init; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_stream_registration ;
typedef  int /*<<< orphan*/  git_stream ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_STREAM_STANDARD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ ctor_called ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  test_stream ; 
 int /*<<< orphan*/  test_stream_init ; 
 int /*<<< orphan*/  test_stream_wrap ; 

void FUNC7(void)
{
	git_stream *stream;
	git_stream_registration registration = {0};

	registration.version = 1;
	registration.init = test_stream_init;
	registration.wrap = test_stream_wrap;

	ctor_called = 0;
	FUNC3(FUNC6(GIT_STREAM_STANDARD, &registration));
	FUNC3(FUNC4(&stream, "localhost", "80"));
	FUNC1(1, ctor_called);
	FUNC2(&test_stream, stream);

	ctor_called = 0;
	stream = NULL;
	FUNC3(FUNC6(GIT_STREAM_STANDARD, NULL));
	FUNC3(FUNC4(&stream, "localhost", "80"));

	FUNC1(0, ctor_called);
	FUNC0(&test_stream != stream);

	FUNC5(stream);
}