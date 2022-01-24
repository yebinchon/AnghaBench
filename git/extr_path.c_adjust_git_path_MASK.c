#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {char* buf; int /*<<< orphan*/  len; } ;
struct repository {int /*<<< orphan*/  commondir; scalar_t__ different_commondir; TYPE_2__* objects; int /*<<< orphan*/  index_file; int /*<<< orphan*/  graft_file; } ;
struct TYPE_4__ {TYPE_1__* odb; } ;
struct TYPE_3__ {scalar_t__ path; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 
 scalar_t__ git_hooks_path ; 
 scalar_t__ FUNC1 (char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(const struct repository *repo,
			    struct strbuf *buf, int git_dir_len)
{
	const char *base = buf->buf + git_dir_len;
	if (FUNC1(base, "info", "grafts"))
		FUNC3(buf, 0, buf->len,
			      repo->graft_file, FUNC5(repo->graft_file));
	else if (!FUNC4(base, "index"))
		FUNC3(buf, 0, buf->len,
			      repo->index_file, FUNC5(repo->index_file));
	else if (FUNC0(base, "objects"))
		FUNC2(buf, git_dir_len + 7, repo->objects->odb->path);
	else if (git_hooks_path && FUNC0(base, "hooks"))
		FUNC2(buf, git_dir_len + 5, git_hooks_path);
	else if (repo->different_commondir)
		FUNC6(buf, git_dir_len, repo->commondir);
}