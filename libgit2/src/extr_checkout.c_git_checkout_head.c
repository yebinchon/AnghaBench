
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_checkout_options ;


 int assert (int *) ;
 int git_checkout_tree (int *,int *,int const*) ;

int git_checkout_head(
 git_repository *repo,
 const git_checkout_options *opts)
{
 assert(repo);
 return git_checkout_tree(repo, ((void*)0), opts);
}
