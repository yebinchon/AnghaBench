
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_reference ;
typedef int git_object ;
struct TYPE_4__ {int ref_name; } ;
typedef TYPE_1__ git_annotated_commit ;


 int GIT_ERROR_CHECK_ALLOC (int ) ;
 int GIT_OBJECT_COMMIT ;
 int annotated_commit_init_from_id (TYPE_1__**,int *,int ,int ) ;
 int assert (int ) ;
 int git__strdup (int ) ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_reference_name (int const*) ;
 int git_reference_peel (int **,int const*,int ) ;

int git_annotated_commit_from_ref(
 git_annotated_commit **out,
 git_repository *repo,
 const git_reference *ref)
{
 git_object *peeled;
 int error = 0;

 assert(out && repo && ref);

 *out = ((void*)0);

 if ((error = git_reference_peel(&peeled, ref, GIT_OBJECT_COMMIT)) < 0)
  return error;

 error = annotated_commit_init_from_id(out,
  repo,
  git_object_id(peeled),
  git_reference_name(ref));

 if (!error) {
  (*out)->ref_name = git__strdup(git_reference_name(ref));
  GIT_ERROR_CHECK_ALLOC((*out)->ref_name);
 }

 git_object_free(peeled);
 return error;
}
