
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_object ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_HEAD_FILE ;
 int GIT_OBJECT_COMMIT ;
 int assert (int *) ;
 int checkout_message (int *,int *,int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_object_lookup (int **,int *,int ,int ) ;
 int git_oid_tostr_s (int ) ;
 int git_reference_create (int **,int *,int ,int ,int,int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,int ) ;
 int git_reference_target (int *) ;
 int git_repository_head (int **,int *) ;

int git_repository_detach_head(git_repository* repo)
{
 git_reference *old_head = ((void*)0), *new_head = ((void*)0), *current = ((void*)0);
 git_object *object = ((void*)0);
 git_buf log_message = GIT_BUF_INIT;
 int error;

 assert(repo);

 if ((error = git_reference_lookup(&current, repo, GIT_HEAD_FILE)) < 0)
  return error;

 if ((error = git_repository_head(&old_head, repo)) < 0)
  goto cleanup;

 if ((error = git_object_lookup(&object, repo, git_reference_target(old_head), GIT_OBJECT_COMMIT)) < 0)
  goto cleanup;

 if ((error = checkout_message(&log_message, current, git_oid_tostr_s(git_object_id(object)))) < 0)
  goto cleanup;

 error = git_reference_create(&new_head, repo, GIT_HEAD_FILE, git_reference_target(old_head),
   1, git_buf_cstr(&log_message));

cleanup:
 git_buf_dispose(&log_message);
 git_object_free(object);
 git_reference_free(old_head);
 git_reference_free(new_head);
 git_reference_free(current);
 return error;
}
