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
 int GIT_STREAM_STANDARD ; 
 int GIT_STREAM_TLS ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ctor_called ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char*,char*) ; 
 int /*<<< orphan*/  test_stream ; 
 int /*<<< orphan*/  test_stream_init ; 
 int /*<<< orphan*/  test_stream_wrap ; 

void FUNC6(void)
{
	git_stream *stream;
	git_stream_registration registration = {0};

	registration.version = 1;
	registration.init = test_stream_init;
	registration.wrap = test_stream_wrap;

	FUNC2(FUNC4(GIT_STREAM_STANDARD | GIT_STREAM_TLS, &registration));

	ctor_called = 0;
	FUNC2(FUNC5(&stream, "localhost", "443"));
	FUNC0(1, ctor_called);
	FUNC1(&test_stream, stream);

	ctor_called = 0;
	FUNC2(FUNC3(&stream, "localhost", "80"));
	FUNC0(1, ctor_called);
	FUNC1(&test_stream, stream);
}