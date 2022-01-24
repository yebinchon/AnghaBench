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
struct worktree {int /*<<< orphan*/  id; } ;
struct strbuf {int dummy; } ;
struct repository {int /*<<< orphan*/  commondir; int /*<<< orphan*/  gitdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,struct repository const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct strbuf *buf,
				   const struct repository *repo,
				   const struct worktree *wt)
{
	if (!wt)
		FUNC0(buf, repo->gitdir);
	else if (!wt->id)
		FUNC0(buf, repo->commondir);
	else
		FUNC1(buf, repo, "worktrees/%s", wt->id);
}