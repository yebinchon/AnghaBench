
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_branch_t ;





 int GIT_ENOTFOUND ;
 int assert (int) ;
 int retrieve_branch_reference (int **,int *,char const*,int) ;

int git_branch_lookup(
 git_reference **ref_out,
 git_repository *repo,
 const char *branch_name,
 git_branch_t branch_type)
{
 int error = -1;
 assert(ref_out && repo && branch_name);

 switch (branch_type) {
 case 129:
 case 128:
  error = retrieve_branch_reference(ref_out, repo, branch_name, branch_type == 128);
  break;
 case 130:
  error = retrieve_branch_reference(ref_out, repo, branch_name, 0);
  if (error == GIT_ENOTFOUND)
   error = retrieve_branch_reference(ref_out, repo, branch_name, 1);
  break;
 default:
  assert(0);
 }
 return error;
}
