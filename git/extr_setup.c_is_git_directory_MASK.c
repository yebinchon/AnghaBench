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
struct strbuf {size_t len; scalar_t__ buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DB_ENVIRONMENT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  X_OK ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,size_t) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 

int FUNC9(const char *suspect)
{
	struct strbuf path = STRBUF_INIT;
	int ret = 0;
	size_t len;

	/* Check worktree-related signatures */
	FUNC3(&path, suspect);
	FUNC4(&path, '/');
	FUNC3(&path, "HEAD");
	if (FUNC8(path.buf))
		goto done;

	FUNC6(&path);
	FUNC1(&path, suspect);
	len = path.len;

	/* Check non-worktree-related signatures */
	if (FUNC2(DB_ENVIRONMENT)) {
		if (FUNC0(FUNC2(DB_ENVIRONMENT), X_OK))
			goto done;
	}
	else {
		FUNC7(&path, len);
		FUNC3(&path, "/objects");
		if (FUNC0(path.buf, X_OK))
			goto done;
	}

	FUNC7(&path, len);
	FUNC3(&path, "/refs");
	if (FUNC0(path.buf, X_OK))
		goto done;

	ret = 1;
done:
	FUNC5(&path);
	return ret;
}