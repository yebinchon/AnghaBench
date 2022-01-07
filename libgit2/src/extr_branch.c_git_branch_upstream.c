
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int git_branch_upstream_name (int *,int ,int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_reference_lookup (int **,int ,int ) ;
 int git_reference_name (int const*) ;
 int git_reference_owner (int const*) ;

int git_branch_upstream(
 git_reference **tracking_out,
 const git_reference *branch)
{
 int error;
 git_buf tracking_name = GIT_BUF_INIT;

 if ((error = git_branch_upstream_name(&tracking_name,
  git_reference_owner(branch), git_reference_name(branch))) < 0)
   return error;

 error = git_reference_lookup(
  tracking_out,
  git_reference_owner(branch),
  git_buf_cstr(&tracking_name));

 git_buf_dispose(&tracking_name);
 return error;
}
