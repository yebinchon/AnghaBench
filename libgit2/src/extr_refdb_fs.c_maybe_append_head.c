
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int repo; } ;
typedef TYPE_1__ refdb_fs_backend ;
typedef int old_id ;
typedef int git_signature ;
struct TYPE_14__ {scalar_t__ type; int name; } ;
typedef TYPE_2__ git_reference ;
typedef int git_oid ;


 int GIT_ENOTFOUND ;
 char* GIT_HEAD_FILE ;
 scalar_t__ GIT_REFERENCE_DIRECT ;
 scalar_t__ GIT_REFERENCE_SYMBOLIC ;
 int git_reference_free (TYPE_2__*) ;
 int git_reference_lookup (TYPE_2__**,int ,char*) ;
 char* git_reference_name (TYPE_2__*) ;
 scalar_t__ git_reference_name_to_id (int *,int ,int ) ;
 char* git_reference_symbolic_target (TYPE_2__*) ;
 int git_reference_target (TYPE_2__ const*) ;
 scalar_t__ git_reference_type (TYPE_2__*) ;
 int memset (int *,int ,int) ;
 int reflog_append (TYPE_1__*,TYPE_2__*,int *,int ,int const*,char const*) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int maybe_append_head(refdb_fs_backend *backend, const git_reference *ref, const git_signature *who, const char *message)
{
 int error;
 git_oid old_id;
 git_reference *tmp = ((void*)0), *head = ((void*)0), *peeled = ((void*)0);
 const char *name;

 if (ref->type == GIT_REFERENCE_SYMBOLIC)
  return 0;


 if (git_reference_name_to_id(&old_id, backend->repo, ref->name) < 0)
  memset(&old_id, 0, sizeof(old_id));

 if ((error = git_reference_lookup(&head, backend->repo, GIT_HEAD_FILE)) < 0)
  return error;

 if (git_reference_type(head) == GIT_REFERENCE_DIRECT)
  goto cleanup;

 if ((error = git_reference_lookup(&tmp, backend->repo, GIT_HEAD_FILE)) < 0)
  goto cleanup;


 while (git_reference_type(tmp) == GIT_REFERENCE_SYMBOLIC) {
  error = git_reference_lookup(&peeled, backend->repo, git_reference_symbolic_target(tmp));
  if (error < 0)
   break;

  git_reference_free(tmp);
  tmp = peeled;
 }

 if (error == GIT_ENOTFOUND) {
  error = 0;
  name = git_reference_symbolic_target(tmp);
 } else if (error < 0) {
  goto cleanup;
 } else {
  name = git_reference_name(tmp);
 }

 if (strcmp(name, ref->name))
  goto cleanup;

 error = reflog_append(backend, head, &old_id, git_reference_target(ref), who, message);

cleanup:
 git_reference_free(tmp);
 git_reference_free(head);
 return error;
}
