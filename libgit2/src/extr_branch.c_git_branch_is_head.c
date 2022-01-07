
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const git_reference ;


 int GIT_ENOTFOUND ;
 int GIT_EUNBORNBRANCH ;
 int assert (int const*) ;
 int git_reference_free (int const*) ;
 int git_reference_is_branch (int const*) ;
 int git_reference_name (int const*) ;
 int git_reference_owner (int const*) ;
 int git_repository_head (int const**,int ) ;
 scalar_t__ strcmp (int ,int ) ;

int git_branch_is_head(
  const git_reference *branch)
{
 git_reference *head;
 bool is_same = 0;
 int error;

 assert(branch);

 if (!git_reference_is_branch(branch))
  return 0;

 error = git_repository_head(&head, git_reference_owner(branch));

 if (error == GIT_EUNBORNBRANCH || error == GIT_ENOTFOUND)
  return 0;

 if (error < 0)
  return -1;

 is_same = strcmp(
  git_reference_name(branch),
  git_reference_name(head)) == 0;

 git_reference_free(head);

 return is_same;
}
