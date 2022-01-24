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
struct TYPE_5__ {scalar_t__ size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(const char *a, const char *b)
{
	git_buf buf_a = GIT_BUF_INIT;
	git_buf buf_b = GIT_BUF_INIT;
	int pass;

	if (FUNC2(&buf_a, a) < 0)
		FUNC0(0);

	if (FUNC2(&buf_b, b) < 0) {
		FUNC1(&buf_a);
		FUNC0(0);
	}

	pass = (buf_a.size == buf_b.size && !FUNC3(buf_a.ptr, buf_b.ptr, buf_a.size));

	FUNC1(&buf_a);
	FUNC1(&buf_b);

	FUNC0(pass);
}