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
struct strbuf {int dummy; } ;
struct repository {int /*<<< orphan*/  worktree; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,int,char const*,struct repository const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 

__attribute__((used)) static void FUNC4(const char *file, int line,
		       const struct repository *repo)
{
	const char *event_name = "def_repo";
	struct strbuf buf_payload = STRBUF_INIT;

	FUNC2(&buf_payload, "worktree:");
	FUNC1(&buf_payload, repo->worktree);

	FUNC0(file, line, event_name, repo, NULL, NULL, NULL,
			 &buf_payload);
	FUNC3(&buf_payload);
}