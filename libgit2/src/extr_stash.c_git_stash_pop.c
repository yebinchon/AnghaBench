
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_stash_apply_options ;
typedef int git_repository ;


 int git_stash_apply (int *,size_t,int const*) ;
 int git_stash_drop (int *,size_t) ;

int git_stash_pop(
 git_repository *repo,
 size_t index,
 const git_stash_apply_options *options)
{
 int error;

 if ((error = git_stash_apply(repo, index, options)) < 0)
  return error;

 return git_stash_drop(repo, index);
}
