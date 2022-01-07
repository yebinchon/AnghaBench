
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opts {scalar_t__ argc; } ;
typedef int git_repository ;


 int check_lg2 (int ,char*,int *) ;
 int git_stash_foreach (int *,int ,int *) ;
 int list_stash_cb ;
 int usage (char*) ;

__attribute__((used)) static int cmd_list(git_repository *repo, struct opts *opts)
{
 if (opts->argc)
  usage("list does not accept any parameters");

 check_lg2(git_stash_foreach(repo, list_stash_cb, ((void*)0)),
    "Unable to list stashes", ((void*)0));

 return 0;
}
