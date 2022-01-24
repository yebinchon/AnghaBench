#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  asize; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char const*) ; 

__attribute__((used)) static void
FUNC8(
	const char* data_a,
	const char* data_b,
	const char* expected_data,
	size_t expected_size,
	size_t expected_asize)
{
	git_buf tgt = GIT_BUF_INIT;

	FUNC7(&tgt, data_a);
	FUNC0(FUNC5(&tgt) == 0);
	FUNC6(&tgt, data_b);
	FUNC0(FUNC5(&tgt) == 0);
	FUNC2(expected_data, FUNC3(&tgt));
	FUNC1(tgt.size, expected_size);
	if (expected_asize > 0)
		FUNC1(tgt.asize, expected_asize);

	FUNC4(&tgt);
}