
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule {int path; int name; } ;
struct strbuf {int * buf; } ;
struct repository {char* submodule_prefix; } ;


 struct strbuf STRBUF_INIT ;
 scalar_t__ repo_init (struct repository*,int *,int *) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_repo_git_path (struct strbuf*,struct repository*,char*,int ) ;
 int strbuf_repo_worktree_path (struct strbuf*,struct repository*,char*,int ) ;
 int strbuf_reset (struct strbuf*) ;
 char* xstrfmt (char*,char*,int ) ;

int repo_submodule_init(struct repository *subrepo,
   struct repository *superproject,
   const struct submodule *sub)
{
 struct strbuf gitdir = STRBUF_INIT;
 struct strbuf worktree = STRBUF_INIT;
 int ret = 0;

 if (!sub) {
  ret = -1;
  goto out;
 }

 strbuf_repo_worktree_path(&gitdir, superproject, "%s/.git", sub->path);
 strbuf_repo_worktree_path(&worktree, superproject, "%s", sub->path);

 if (repo_init(subrepo, gitdir.buf, worktree.buf)) {







  strbuf_reset(&gitdir);
  strbuf_repo_git_path(&gitdir, superproject,
         "modules/%s", sub->name);

  if (repo_init(subrepo, gitdir.buf, ((void*)0))) {
   ret = -1;
   goto out;
  }
 }

 subrepo->submodule_prefix = xstrfmt("%s%s/",
         superproject->submodule_prefix ?
         superproject->submodule_prefix :
         "", sub->path);

out:
 strbuf_release(&gitdir);
 strbuf_release(&worktree);
 return ret;
}
