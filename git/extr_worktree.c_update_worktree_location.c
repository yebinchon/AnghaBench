
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {int path; int id; } ;
struct strbuf {int buf; } ;


 int BUG (char*) ;
 struct strbuf STRBUF_INIT ;
 int free (int ) ;
 scalar_t__ fspathcmp (int ,int ) ;
 int git_common_path (char*,int ) ;
 scalar_t__ is_main_worktree (struct worktree*) ;
 int strbuf_detach (struct strbuf*,int *) ;
 int strbuf_realpath (struct strbuf*,char const*,int) ;
 int strbuf_release (struct strbuf*) ;
 int write_file (int ,char*,int ) ;

void update_worktree_location(struct worktree *wt, const char *path_)
{
 struct strbuf path = STRBUF_INIT;

 if (is_main_worktree(wt))
  BUG("can't relocate main worktree");

 strbuf_realpath(&path, path_, 1);
 if (fspathcmp(wt->path, path.buf)) {
  write_file(git_common_path("worktrees/%s/gitdir", wt->id),
      "%s/.git", path.buf);
  free(wt->path);
  wt->path = strbuf_detach(&path, ((void*)0));
 }
 strbuf_release(&path);
}
