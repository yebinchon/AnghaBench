
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opts {scalar_t__ argc; } ;
typedef int git_signature ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_commit ;


 int GIT_STASH_DEFAULT ;
 int check_lg2 (int ,char*,int *) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int *,int *) ;
 char* git_commit_summary (int *) ;
 int git_signature_default (int **,int *) ;
 int git_signature_free (int *) ;
 int git_stash_save (int *,int *,int *,int *,int ) ;
 int printf (char*,char*) ;
 int usage (char*) ;

__attribute__((used)) static int cmd_push(git_repository *repo, struct opts *opts)
{
 git_signature *signature;
 git_commit *stash;
 git_oid stashid;

 if (opts->argc)
  usage("push does not accept any parameters");

 check_lg2(git_signature_default(&signature, repo),
    "Unable to get signature", ((void*)0));
 check_lg2(git_stash_save(&stashid, repo, signature, ((void*)0), GIT_STASH_DEFAULT),
    "Unable to save stash", ((void*)0));
 check_lg2(git_commit_lookup(&stash, repo, &stashid),
    "Unable to lookup stash commit", ((void*)0));

 printf("Saved working directory %s\n", git_commit_summary(stash));

 git_signature_free(signature);
 git_commit_free(stash);

 return 0;
}
