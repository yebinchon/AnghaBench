
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ contents; int length; } ;
typedef TYPE_1__ git_vector ;
struct TYPE_8__ {char** strings; int count; } ;
typedef TYPE_2__ git_strarray ;
typedef int git_repository ;
typedef int git_remote ;


 TYPE_1__ GIT_VECTOR_INIT ;
 int assert (int ) ;
 int ensure_remote_doesnot_exist (int *,char const*) ;
 int ensure_remote_name_is_valid (char const*) ;
 int git_remote_free (int *) ;
 int git_remote_lookup (int **,int *,char const*) ;
 int git_vector_free (TYPE_1__*) ;
 int rename_fetch_refspecs (TYPE_1__*,int *,char const*) ;
 int rename_remote_config_section (int *,char const*,char const*) ;
 int rename_remote_references (int *,char const*,char const*) ;
 int update_branch_remote_config_entry (int *,char const*,char const*) ;

int git_remote_rename(git_strarray *out, git_repository *repo, const char *name, const char *new_name)
{
 int error;
 git_vector problem_refspecs = GIT_VECTOR_INIT;
 git_remote *remote = ((void*)0);

 assert(out && repo && name && new_name);

 if ((error = git_remote_lookup(&remote, repo, name)) < 0)
  return error;

 if ((error = ensure_remote_name_is_valid(new_name)) < 0)
  goto cleanup;

 if ((error = ensure_remote_doesnot_exist(repo, new_name)) < 0)
  goto cleanup;

 if ((error = rename_remote_config_section(repo, name, new_name)) < 0)
  goto cleanup;

 if ((error = update_branch_remote_config_entry(repo, name, new_name)) < 0)
  goto cleanup;

 if ((error = rename_remote_references(repo, name, new_name)) < 0)
  goto cleanup;

 if ((error = rename_fetch_refspecs(&problem_refspecs, remote, new_name)) < 0)
  goto cleanup;

 out->count = problem_refspecs.length;
 out->strings = (char **) problem_refspecs.contents;

cleanup:
 if (error < 0)
  git_vector_free(&problem_refspecs);

 git_remote_free(remote);
 return error;
}
