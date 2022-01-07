
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {char* id; } ;
struct strbuf {int buf; } ;
struct ref_store {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int add_to_alternates_memory (int ) ;
 int die (char*,...) ;
 struct ref_store* get_main_ref_store (int ) ;
 struct ref_store* get_submodule_ref_store (char const*) ;
 struct ref_store* get_worktree_ref_store (struct worktree*) ;
 struct worktree** get_worktrees (int ) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strbuf_git_path_submodule (struct strbuf*,char const*,char*) ;
 int strbuf_release (struct strbuf*) ;
 int strcmp (char const*,char*) ;
 int the_repository ;

__attribute__((used)) static const char **get_store(const char **argv, struct ref_store **refs)
{
 const char *gitdir;

 if (!argv[0]) {
  die("ref store required");
 } else if (!strcmp(argv[0], "main")) {
  *refs = get_main_ref_store(the_repository);
 } else if (skip_prefix(argv[0], "submodule:", &gitdir)) {
  struct strbuf sb = STRBUF_INIT;
  int ret;

  ret = strbuf_git_path_submodule(&sb, gitdir, "objects/");
  if (ret)
   die("strbuf_git_path_submodule failed: %d", ret);
  add_to_alternates_memory(sb.buf);
  strbuf_release(&sb);

  *refs = get_submodule_ref_store(gitdir);
 } else if (skip_prefix(argv[0], "worktree:", &gitdir)) {
  struct worktree **p, **worktrees = get_worktrees(0);

  for (p = worktrees; *p; p++) {
   struct worktree *wt = *p;

   if (!wt->id) {

    if (!strcmp(gitdir, "main"))
     break;
   } else if (!strcmp(gitdir, wt->id))
    break;
  }
  if (!*p)
   die("no such worktree: %s", gitdir);

  *refs = get_worktree_ref_store(*p);
 } else
  die("unknown backend %s", argv[0]);

 if (!*refs)
  die("no ref store");



 return argv + 1;
}
