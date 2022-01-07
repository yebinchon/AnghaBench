
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opts {scalar_t__ argc; } ;
typedef int git_repository ;


 int check_lg2 (int ,char*,int *) ;
 int git_stash_apply (int *,int ,int *) ;
 int usage (char*) ;

__attribute__((used)) static int cmd_apply(git_repository *repo, struct opts *opts)
{
 if (opts->argc)
  usage("apply does not accept any parameters");

 check_lg2(git_stash_apply(repo, 0, ((void*)0)),
    "Unable to apply stash", ((void*)0));

 return 0;
}
