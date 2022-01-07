
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;


 int FORMAT_LONG ;
 int GIT_ENOTFOUND ;
 int GIT_EUNBORNBRANCH ;
 int check_lg2 (int,char*,int *) ;
 int git_reference_free (int *) ;
 char* git_reference_shorthand (int *) ;
 int git_repository_head (int **,int *) ;
 int printf (char*,char const*) ;

__attribute__((used)) static void show_branch(git_repository *repo, int format)
{
 int error = 0;
 const char *branch = ((void*)0);
 git_reference *head = ((void*)0);

 error = git_repository_head(&head, repo);

 if (error == GIT_EUNBORNBRANCH || error == GIT_ENOTFOUND)
  branch = ((void*)0);
 else if (!error) {
  branch = git_reference_shorthand(head);
 } else
  check_lg2(error, "failed to get current branch", ((void*)0));

 if (format == FORMAT_LONG)
  printf("# On branch %s\n",
   branch ? branch : "Not currently on any branch.");
 else
  printf("## %s\n", branch ? branch : "HEAD (no branch)");

 git_reference_free(head);
}
