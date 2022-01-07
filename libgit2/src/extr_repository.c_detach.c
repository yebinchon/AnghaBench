
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_HEAD_FILE ;
 int GIT_OBJECT_ANY ;
 int GIT_OBJECT_COMMIT ;
 int assert (int) ;
 int checkout_message (int *,int *,char const*) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_object_lookup (int **,int *,int const*,int ) ;
 int git_object_peel (int **,int *,int ) ;
 char* git_oid_tostr_s (int ) ;
 int git_reference_create (int **,int *,int ,int ,int,int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,int ) ;

__attribute__((used)) static int detach(git_repository *repo, const git_oid *id, const char *new)
{
 int error;
 git_buf log_message = GIT_BUF_INIT;
 git_object *object = ((void*)0), *peeled = ((void*)0);
 git_reference *new_head = ((void*)0), *current = ((void*)0);

 assert(repo && id);

 if ((error = git_reference_lookup(&current, repo, GIT_HEAD_FILE)) < 0)
  return error;

 if ((error = git_object_lookup(&object, repo, id, GIT_OBJECT_ANY)) < 0)
  goto cleanup;

 if ((error = git_object_peel(&peeled, object, GIT_OBJECT_COMMIT)) < 0)
  goto cleanup;

 if (new == ((void*)0))
  new = git_oid_tostr_s(git_object_id(peeled));

 if ((error = checkout_message(&log_message, current, new)) < 0)
  goto cleanup;

 error = git_reference_create(&new_head, repo, GIT_HEAD_FILE, git_object_id(peeled), 1, git_buf_cstr(&log_message));

cleanup:
 git_buf_dispose(&log_message);
 git_object_free(object);
 git_object_free(peeled);
 git_reference_free(current);
 git_reference_free(new_head);
 return error;
}
