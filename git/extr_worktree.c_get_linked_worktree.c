
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {int id; int path; } ;
struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int add_head_info (struct worktree*) ;
 int die (char*) ;
 int get_git_common_dir () ;
 int strbuf_add_absolute_path (struct strbuf*,char*) ;
 int strbuf_addf (struct strbuf*,char*,int ,char const*) ;
 int strbuf_detach (struct strbuf*,int *) ;
 int strbuf_git_common_path (struct strbuf*,int ,char*,char const*) ;
 scalar_t__ strbuf_read_file (struct strbuf*,int ,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int strbuf_rtrim (struct strbuf*) ;
 int strbuf_strip_suffix (struct strbuf*,char*) ;
 int the_repository ;
 struct worktree* xcalloc (int,int) ;
 int xstrdup (char const*) ;

__attribute__((used)) static struct worktree *get_linked_worktree(const char *id)
{
 struct worktree *worktree = ((void*)0);
 struct strbuf path = STRBUF_INIT;
 struct strbuf worktree_path = STRBUF_INIT;

 if (!id)
  die("Missing linked worktree name");

 strbuf_git_common_path(&path, the_repository, "worktrees/%s/gitdir", id);
 if (strbuf_read_file(&worktree_path, path.buf, 0) <= 0)

  goto done;

 strbuf_rtrim(&worktree_path);
 if (!strbuf_strip_suffix(&worktree_path, "/.git")) {
  strbuf_reset(&worktree_path);
  strbuf_add_absolute_path(&worktree_path, ".");
  strbuf_strip_suffix(&worktree_path, "/.");
 }

 strbuf_reset(&path);
 strbuf_addf(&path, "%s/worktrees/%s/HEAD", get_git_common_dir(), id);

 worktree = xcalloc(1, sizeof(*worktree));
 worktree->path = strbuf_detach(&worktree_path, ((void*)0));
 worktree->id = xstrdup(id);
 add_head_info(worktree);

done:
 strbuf_release(&path);
 strbuf_release(&worktree_path);
 return worktree;
}
