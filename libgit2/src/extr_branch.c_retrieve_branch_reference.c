
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_reference ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_ERROR_REFERENCE ;
 char* GIT_REFS_HEADS_DIR ;
 char* GIT_REFS_REMOTES_DIR ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,char*,char const*) ;
 int git_error_set (int ,char*,char*,char const*) ;
 int git_reference_lookup (int **,int *,int ) ;

__attribute__((used)) static int retrieve_branch_reference(
 git_reference **branch_reference_out,
 git_repository *repo,
 const char *branch_name,
 bool is_remote)
{
 git_reference *branch = ((void*)0);
 int error = 0;
 char *prefix;
 git_buf ref_name = GIT_BUF_INIT;

 prefix = is_remote ? GIT_REFS_REMOTES_DIR : GIT_REFS_HEADS_DIR;

 if ((error = git_buf_joinpath(&ref_name, prefix, branch_name)) < 0)
           ;
 else if ((error = git_reference_lookup(&branch, repo, ref_name.ptr)) < 0)
  git_error_set(
   GIT_ERROR_REFERENCE, "cannot locate %s branch '%s'",
   is_remote ? "remote-tracking" : "local", branch_name);

 *branch_reference_out = branch;

 git_buf_dispose(&ref_name);
 return error;
}
