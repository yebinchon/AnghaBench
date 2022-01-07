
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule {int path; } ;
struct strbuf {int buf; } ;
struct repository {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int free (struct repository*) ;
 scalar_t__ repo_init (struct repository*,int ,int *) ;
 scalar_t__ repo_submodule_init (struct repository*,struct repository*,struct submodule const*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_repo_worktree_path (struct strbuf*,struct repository*,char*,int ) ;
 struct repository* xmalloc (int) ;

__attribute__((used)) static struct repository *get_submodule_repo_for(struct repository *r,
       const struct submodule *sub)
{
 struct repository *ret = xmalloc(sizeof(*ret));

 if (repo_submodule_init(ret, r, sub)) {





  struct strbuf gitdir = STRBUF_INIT;
  strbuf_repo_worktree_path(&gitdir, r, "%s/.git", sub->path);
  if (repo_init(ret, gitdir.buf, ((void*)0))) {
   strbuf_release(&gitdir);
   free(ret);
   return ((void*)0);
  }
  strbuf_release(&gitdir);
 }

 return ret;
}
