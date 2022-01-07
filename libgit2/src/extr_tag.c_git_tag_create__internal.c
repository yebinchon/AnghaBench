
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_signature ;
typedef int git_repository ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_object ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_EEXISTS ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_INVALID ;
 int GIT_ERROR_TAG ;
 int assert (int) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_error_set (int ,char*) ;
 int git_object_id (int const*) ;
 int * git_object_owner (int const*) ;
 int git_oid_cpy (int *,int ) ;
 int git_reference_create (int **,int *,int ,int *,int,int *) ;
 int git_reference_free (int *) ;
 int retrieve_tag_reference_oid (int *,TYPE_1__*,int *,char const*) ;
 scalar_t__ write_tag_annotation (int *,int *,char const*,int const*,int const*,char const*) ;

__attribute__((used)) static int git_tag_create__internal(
  git_oid *oid,
  git_repository *repo,
  const char *tag_name,
  const git_object *target,
  const git_signature *tagger,
  const char *message,
  int allow_ref_overwrite,
  int create_tag_annotation)
{
 git_reference *new_ref = ((void*)0);
 git_buf ref_name = GIT_BUF_INIT;

 int error;

 assert(repo && tag_name && target);
 assert(!create_tag_annotation || (tagger && message));

 if (git_object_owner(target) != repo) {
  git_error_set(GIT_ERROR_INVALID, "the given target does not belong to this repository");
  return -1;
 }

 error = retrieve_tag_reference_oid(oid, &ref_name, repo, tag_name);
 if (error < 0 && error != GIT_ENOTFOUND)
  goto cleanup;



 if (error == 0 && !allow_ref_overwrite) {
  git_buf_dispose(&ref_name);
  git_error_set(GIT_ERROR_TAG, "tag already exists");
  return GIT_EEXISTS;
 }

 if (create_tag_annotation) {
  if (write_tag_annotation(oid, repo, tag_name, target, tagger, message) < 0)
   return -1;
 } else
  git_oid_cpy(oid, git_object_id(target));

 error = git_reference_create(&new_ref, repo, ref_name.ptr, oid, allow_ref_overwrite, ((void*)0));

cleanup:
 git_reference_free(new_ref);
 git_buf_dispose(&ref_name);
 return error;
}
