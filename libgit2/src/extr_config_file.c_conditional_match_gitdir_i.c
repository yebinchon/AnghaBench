
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int do_match_gitdir (int*,int const*,char const*,char const*,int) ;

__attribute__((used)) static int conditional_match_gitdir_i(
 int *matches,
 const git_repository *repo,
 const char *cfg_file,
 const char *value)
{
 return do_match_gitdir(matches, repo, cfg_file, value, 1);
}
