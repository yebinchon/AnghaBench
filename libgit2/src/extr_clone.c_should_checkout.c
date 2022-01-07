
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_3__ {scalar_t__ checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 scalar_t__ GIT_CHECKOUT_NONE ;
 int git_repository_head_unborn (int *) ;

__attribute__((used)) static bool should_checkout(
 git_repository *repo,
 bool is_bare,
 const git_checkout_options *opts)
{
 if (is_bare)
  return 0;

 if (!opts)
  return 0;

 if (opts->checkout_strategy == GIT_CHECKOUT_NONE)
  return 0;

 return !git_repository_head_unborn(repo);
}
