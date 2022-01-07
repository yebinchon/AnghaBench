
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct set_gitdir_args {int * member_0; } ;
struct repository {int dummy; } ;


 int free (char*) ;
 char* real_pathdup (char const*,int ) ;
 int repo_set_gitdir (struct repository*,char const*,struct set_gitdir_args*) ;
 char* resolve_gitdir_gently (char*,int*) ;

__attribute__((used)) static int repo_init_gitdir(struct repository *repo, const char *gitdir)
{
 int ret = 0;
 int error = 0;
 char *abspath = ((void*)0);
 const char *resolved_gitdir;
 struct set_gitdir_args args = { ((void*)0) };

 abspath = real_pathdup(gitdir, 0);
 if (!abspath) {
  ret = -1;
  goto out;
 }


 resolved_gitdir = resolve_gitdir_gently(abspath, &error);
 if (!resolved_gitdir) {
  ret = -1;
  goto out;
 }

 repo_set_gitdir(repo, resolved_gitdir, &args);

out:
 free(abspath);
 return ret;
}
