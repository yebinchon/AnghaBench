
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int GIT_CONFIGMAP_SYMLINKS ;
 int cl_git_pass (int ) ;
 int git_futils_fake_symlink (char const*,char const*) ;
 int git_repository__configmap_lookup (int*,int *,int ) ;
 int p_symlink (char const*,char const*) ;

__attribute__((used)) static int symlink_or_fake(git_repository *repo, const char *a, const char *b)
{
 int symlinks;

 cl_git_pass(git_repository__configmap_lookup(&symlinks, repo, GIT_CONFIGMAP_SYMLINKS));

 if (symlinks)
  return p_symlink(a, b);
 else
  return git_futils_fake_symlink(a, b);
}
