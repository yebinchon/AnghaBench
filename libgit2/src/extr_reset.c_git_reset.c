
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reset_t ;
typedef int git_repository ;
typedef int git_object ;
typedef int git_checkout_options ;


 int git_object_id (int const*) ;
 int git_oid_tostr_s (int ) ;
 int reset (int *,int const*,int ,int ,int const*) ;

int git_reset(
 git_repository *repo,
 const git_object *target,
 git_reset_t reset_type,
 const git_checkout_options *checkout_opts)
{
 return reset(repo, target, git_oid_tostr_s(git_object_id(target)), reset_type, checkout_opts);
}
