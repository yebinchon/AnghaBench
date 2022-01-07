
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_status_options ;
typedef int git_status_list ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_object ;
struct TYPE_5__ {int dirty; } ;
typedef TYPE_1__ git_describe_result ;
typedef int git_describe_options ;


 int GIT_HEAD_FILE ;
 int GIT_OBJECT_COMMIT ;
 int GIT_STATUS_OPTIONS_INIT ;
 int git_describe_commit (TYPE_1__**,int *,int *) ;
 int git_describe_result_free (TYPE_1__*) ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int *,int *,int ) ;
 int git_reference_name_to_id (int *,int *,int ) ;
 scalar_t__ git_status_list_entrycount (int *) ;
 int git_status_list_free (int *) ;
 int git_status_list_new (int **,int *,int *) ;

int git_describe_workdir(
 git_describe_result **out,
 git_repository *repo,
 git_describe_options *opts)
{
 int error;
 git_oid current_id;
 git_status_list *status = ((void*)0);
 git_status_options status_opts = GIT_STATUS_OPTIONS_INIT;
 git_describe_result *result = ((void*)0);
 git_object *commit;

 if ((error = git_reference_name_to_id(&current_id, repo, GIT_HEAD_FILE)) < 0)
  return error;

 if ((error = git_object_lookup(&commit, repo, &current_id, GIT_OBJECT_COMMIT)) < 0)
  return error;


 if ((error = git_describe_commit(&result, commit, opts)) < 0)
  goto out;

 if ((error = git_status_list_new(&status, repo, &status_opts)) < 0)
  goto out;


 if (git_status_list_entrycount(status) > 0)
  result->dirty = 1;

out:
 git_object_free(commit);
 git_status_list_free(status);

 if (error < 0)
  git_describe_result_free(result);
 else
  *out = result;

 return error;
}
