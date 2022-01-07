
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_reset_t ;
typedef int git_repository ;
typedef int git_object ;
typedef int git_checkout_options ;
struct TYPE_3__ {int description; scalar_t__ commit; } ;
typedef TYPE_1__ git_annotated_commit ;


 int reset (int *,int *,int ,int ,int const*) ;

int git_reset_from_annotated(
 git_repository *repo,
 const git_annotated_commit *commit,
 git_reset_t reset_type,
 const git_checkout_options *checkout_opts)
{
 return reset(repo, (git_object *) commit->commit, commit->description, reset_type, checkout_opts);
}
