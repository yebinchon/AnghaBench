
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* email; } ;
typedef TYPE_1__ git_signature ;
typedef int git_revwalk ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_commit ;


 int GIT_SORT_REVERSE ;
 int GIT_SORT_TOPOLOGICAL ;
 int check_error (int,char*) ;
 TYPE_1__* git_commit_author (int *) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int *,int *) ;
 char* git_commit_message (int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_revwalk_free (int *) ;
 int git_revwalk_new (int **,int *) ;
 scalar_t__ git_revwalk_next (int *,int *) ;
 int git_revwalk_push (int *,int *) ;
 int git_revwalk_sorting (int *,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void revwalking(git_repository *repo)
{
 const git_signature *cauth;
 const char *cmsg;
 int error;
 git_revwalk *walk;
 git_commit *wcommit;
 git_oid oid;

 printf("\n*Revwalking*\n");

 git_oid_fromstr(&oid, "5b5b025afb0b4c913b4c338a42934a3863bf3644");
 git_revwalk_new(&walk, repo);
 git_revwalk_sorting(walk, GIT_SORT_TOPOLOGICAL | GIT_SORT_REVERSE);
 git_revwalk_push(walk, &oid);
 while ((git_revwalk_next(&oid, walk)) == 0) {
  error = git_commit_lookup(&wcommit, repo, &oid);
  check_error(error, "looking up commit during revwalk");

  cmsg = git_commit_message(wcommit);
  cauth = git_commit_author(wcommit);
  printf("%s (%s)\n", cmsg, cauth->email);

  git_commit_free(wcommit);
 }







 git_revwalk_free(walk);
}
