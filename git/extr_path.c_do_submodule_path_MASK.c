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
typedef  int /*<<< orphan*/  va_list ;
struct strbuf {int /*<<< orphan*/  buf; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct strbuf *buf, const char *path,
			     const char *fmt, va_list args)
{
	struct strbuf git_submodule_common_dir = STRBUF_INIT;
	struct strbuf git_submodule_dir = STRBUF_INIT;
	int ret;

	ret = FUNC6(&git_submodule_dir, path);
	if (ret)
		goto cleanup;

	FUNC3(&git_submodule_dir, '/');
	FUNC1(buf, &git_submodule_dir);
	FUNC5(buf, fmt, args);

	if (FUNC0(&git_submodule_common_dir, git_submodule_dir.buf))
		FUNC7(buf, git_submodule_dir.len, git_submodule_common_dir.buf);

	FUNC2(buf);

cleanup:
	FUNC4(&git_submodule_dir);
	FUNC4(&git_submodule_common_dir);
	return ret;
}