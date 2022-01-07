
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_signature ;
typedef int git_repository ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_odb ;
typedef int git_commit_parent_callback ;
struct TYPE_5__ {int size; int ptr; } ;
typedef TYPE_1__ git_buf ;
typedef int git_array_oid_t ;


 int GIT_ARRAY_INIT ;
 TYPE_1__ GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int GIT_OBJECT_COMMIT ;
 int git_array_clear (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_commit__create_buffer_internal (TYPE_1__*,int const*,int const*,char const*,char const*,int const*,int *) ;
 int git_error_clear () ;
 scalar_t__ git_odb__freshen (int *,int const*) ;
 scalar_t__ git_odb_write (int *,int *,int ,int ,int ) ;
 int git_reference__update_for_commit (int *,int *,char const*,int *,char*) ;
 int git_reference_free (int *) ;
 int git_reference_lookup_resolved (int **,int *,char const*,int) ;
 int * git_reference_target (int *) ;
 scalar_t__ git_repository_odb__weakptr (int **,int *) ;
 int validate_tree_and_parents (int *,int *,int const*,int ,void*,int const*,int) ;

__attribute__((used)) static int git_commit__create_internal(
 git_oid *id,
 git_repository *repo,
 const char *update_ref,
 const git_signature *author,
 const git_signature *committer,
 const char *message_encoding,
 const char *message,
 const git_oid *tree,
 git_commit_parent_callback parent_cb,
 void *parent_payload,
 bool validate)
{
 int error;
 git_odb *odb;
 git_reference *ref = ((void*)0);
 git_buf buf = GIT_BUF_INIT;
 const git_oid *current_id = ((void*)0);
 git_array_oid_t parents = GIT_ARRAY_INIT;

 if (update_ref) {
  error = git_reference_lookup_resolved(&ref, repo, update_ref, 10);
  if (error < 0 && error != GIT_ENOTFOUND)
   return error;
 }
 git_error_clear();

 if (ref)
  current_id = git_reference_target(ref);

 if ((error = validate_tree_and_parents(&parents, repo, tree, parent_cb, parent_payload, current_id, validate)) < 0)
  goto cleanup;

 error = git_commit__create_buffer_internal(&buf, author, committer,
  message_encoding, message, tree,
  &parents);

 if (error < 0)
  goto cleanup;

 if (git_repository_odb__weakptr(&odb, repo) < 0)
  goto cleanup;

 if (git_odb__freshen(odb, tree) < 0)
  goto cleanup;

 if (git_odb_write(id, odb, buf.ptr, buf.size, GIT_OBJECT_COMMIT) < 0)
  goto cleanup;


 if (update_ref != ((void*)0)) {
  error = git_reference__update_for_commit(
   repo, ref, update_ref, id, "commit");
  goto cleanup;
 }

cleanup:
 git_array_clear(parents);
 git_reference_free(ref);
 git_buf_dispose(&buf);
 return error;
}
