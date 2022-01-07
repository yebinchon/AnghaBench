
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef scalar_t__ git_rebase_type_t ;


 int GIT_ERROR_REBASE ;
 scalar_t__ GIT_REBASE_TYPE_NONE ;
 int git_error_set (int ,char*) ;
 int rebase_state_type (scalar_t__*,int *,int *) ;

__attribute__((used)) static int rebase_ensure_not_in_progress(git_repository *repo)
{
 int error;
 git_rebase_type_t type;

 if ((error = rebase_state_type(&type, ((void*)0), repo)) < 0)
  return error;

 if (type != GIT_REBASE_TYPE_NONE) {
  git_error_set(GIT_ERROR_REBASE, "there is an existing rebase in progress");
  return -1;
 }

 return 0;
}
