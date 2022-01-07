
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {int id; } ;
struct strbuf {int dummy; } ;
struct repository {int commondir; int gitdir; } ;


 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_git_common_path (struct strbuf*,struct repository const*,char*,int ) ;

__attribute__((used)) static void strbuf_worktree_gitdir(struct strbuf *buf,
       const struct repository *repo,
       const struct worktree *wt)
{
 if (!wt)
  strbuf_addstr(buf, repo->gitdir);
 else if (!wt->id)
  strbuf_addstr(buf, repo->commondir);
 else
  strbuf_git_common_path(buf, repo, "worktrees/%s", wt->id);
}
