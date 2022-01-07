
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opts {scalar_t__ argc; } ;
typedef int git_repository ;


 int check_lg2 (int ,char*,int *) ;
 int git_stash_pop (int *,int ,int *) ;
 int printf (char*) ;
 int usage (char*) ;

__attribute__((used)) static int cmd_pop(git_repository *repo, struct opts *opts)
{
 if (opts->argc)
  usage("pop does not accept any parameters");

 check_lg2(git_stash_pop(repo, 0, ((void*)0)),
    "Unable to pop stash", ((void*)0));

 printf("Dropped refs/stash@{0}\n");

 return 0;
}
