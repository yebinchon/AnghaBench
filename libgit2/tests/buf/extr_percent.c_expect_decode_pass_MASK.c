#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

__attribute__((used)) static void FUNC10(const char *expected, const char *encoded)
{
	git_buf in = GIT_BUF_INIT, out = GIT_BUF_INIT;

	/*
	 * ensure that we only read the given length of the input buffer
	 * by putting garbage at the end.  this will ensure that we do
	 * not, eg, rely on nul-termination or walk off the end of the buf.
	 */
	FUNC2(FUNC8(&in, encoded));
	FUNC2(FUNC3(&in, "TRAILER"));

	FUNC2(FUNC5(&out, in.ptr, FUNC9(encoded)));

	FUNC1(expected, FUNC4(&out));
	FUNC0(FUNC9(expected), FUNC7(&out));

	FUNC6(&in);
	FUNC6(&out);
}