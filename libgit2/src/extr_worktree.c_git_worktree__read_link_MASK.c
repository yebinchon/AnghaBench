#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,char const*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

char *FUNC9(const char *base, const char *file)
{
	git_buf path = GIT_BUF_INIT, buf = GIT_BUF_INIT;

	FUNC0(base && file);

	if (FUNC3(&path, base, file) < 0)
		goto err;
	if (FUNC6(&buf, path.ptr) < 0)
		goto err;
	FUNC2(&path);

	FUNC4(&buf);

	if (!FUNC8(buf.ptr))
		return FUNC1(&buf);

	if (FUNC5(&path, base) < 0)
		goto err;
	if (FUNC7(&path, buf.ptr) < 0)
		goto err;
	FUNC2(&buf);

	return FUNC1(&path);

err:
	FUNC2(&buf);
	FUNC2(&path);

	return NULL;
}